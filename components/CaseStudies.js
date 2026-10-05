import { Shield } from 'lucide-react'
import { caseStudies } from '@/data/caseStudies'

export default function CaseStudies() {
  return (
    <section id="case-studies" className="bg-gray-50">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Case Studies</h2>
          <p className="section-subtitle">Real project experience with client identities protected under NDA</p>
        </div>
        <div className="grid lg:grid-cols-2 gap-8 max-w-7xl mx-auto">
          {caseStudies.map((s) => (
            <div key={s.id} className="card flex flex-col justify-between">
              <div>
                <div className="flex items-start justify-between gap-4 mb-2">
                  <h3 className="text-xl font-bold text-gray-900">{s.title}</h3>
                  <span className="badge badge-warning flex items-center gap-1 flex-shrink-0"><Shield className="w-3 h-3" />{s.badge}</span>
                </div>
                <p className="text-sm text-gray-500 mb-4">{s.client}</p>
                <div className="flex flex-wrap gap-2 mb-4">{s.services.map((sv, i) => (<span key={i} className="badge bg-primary-50 text-primary-700 text-xs">{sv}</span>))}</div>
                <p className="text-gray-700 mb-4 text-sm leading-relaxed">{s.description}</p>
                {s.outcomes && (
                  <div className="mb-4">
                    <h4 className="text-xs font-bold uppercase tracking-wider text-gray-500 mb-2">Outcomes:</h4>
                    <ul className="space-y-1.5">{s.outcomes.map((o, i) => (<li key={i} className="flex items-start gap-2 text-sm text-gray-700"><span className="text-green-600 font-bold">✓</span>{o}</li>))}</ul>
                  </div>
                )}
              </div>
              <div className="pt-4 border-t border-gray-100">
                <div className="flex items-center gap-2 text-xs text-amber-800 bg-amber-50 p-2.5 rounded"><Shield className="w-3.5 h-3.5 flex-shrink-0 text-amber-600" /><span>{s.ndaNote}</span></div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
