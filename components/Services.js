import { Mail, Globe, ShoppingCart, Briefcase, Code, AlertCircle } from 'lucide-react'
import { services } from '@/data/services'
const iconMap = { Mail, Globe, ShoppingCart, Briefcase, Code }

export default function Services() {
  return (
    <section id="services" className="bg-gray-50">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Services</h2>
          <p className="section-subtitle">Email marketing, WordPress development, AI-assisted web solutions, and virtual assistance</p>
        </div>
        <div className="grid lg:grid-cols-2 gap-8 max-w-7xl mx-auto">
          {services.map((s) => {
            const Icon = iconMap[s.icon] || Globe
            return (
              <div key={s.id} className="card flex flex-col justify-between">
                <div>
                  <div className="flex items-start gap-4 mb-4">
                    <div className="w-12 h-12 bg-primary-600 text-white rounded-lg flex items-center justify-center text-xl font-bold flex-shrink-0">{s.letter}</div>
                    <div>
                      <div className="flex items-center gap-2 mb-1"><Icon className="w-5 h-5 text-primary-600" /><h3 className="text-xl font-bold text-gray-900">{s.title}</h3></div>
                      <p className="text-gray-600 text-sm">{s.description}</p>
                    </div>
                  </div>
                  <ul className="grid sm:grid-cols-2 gap-2 mb-6">
                    {s.services.map((item, i) => (
                      <li key={i} className="flex items-start gap-2 text-sm text-gray-700"><span className="text-primary-600 font-bold">✓</span>{item}</li>
                    ))}
                  </ul>
                </div>
                <div>
                  <div className="pt-4 border-t border-gray-100"><p className="text-sm text-gray-800 italic"><strong>Outcome:</strong> {s.outcome}</p></div>
                  {s.disclaimer && (
                    <div className="mt-4 flex items-start gap-2 p-3 bg-amber-50 border border-amber-200 rounded-lg">
                      <AlertCircle className="w-4 h-4 text-amber-600 flex-shrink-0 mt-0.5" />
                      <p className="text-xs text-amber-800">{s.disclaimer}</p>
                    </div>
                  )}
                </div>
              </div>
            )
          })}
        </div>
      </div>
    </section>
  )
}
