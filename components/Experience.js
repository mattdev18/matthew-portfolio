import { Briefcase, Calendar } from 'lucide-react'
import { experience } from '@/data/experience'

export default function Experience() {
  return (
    <section id="experience" className="bg-white">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Experience</h2>
          <p className="section-subtitle">WordPress development, AI workflows, email marketing, and enterprise ERP</p>
        </div>
        <div className="max-w-4xl mx-auto space-y-8">
          {experience.map((job) => (
            <div key={job.id} className="card">
              <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4 mb-4">
                <div>
                  <h3 className="text-xl font-bold text-gray-900 mb-1">{job.title}</h3>
                  <div className="flex items-center gap-2 text-gray-600 mb-2"><Briefcase className="w-4 h-4" /><span>{job.company}</span></div>
                  <div className="flex items-center gap-2 text-gray-500 text-sm"><Calendar className="w-4 h-4" /><span>{job.period}</span></div>
                </div>
                <span className="badge badge-primary self-start">{job.type}</span>
              </div>
              <p className="text-gray-700 mb-4">{job.description}</p>
              {job.responsibilities && (
                <div className="mb-4">
                  <h4 className="text-sm font-semibold text-gray-900 mb-2">Key Responsibilities:</h4>
                  <ul className="space-y-1.5">{job.responsibilities.map((r, i) => (<li key={i} className="flex items-start gap-2 text-sm text-gray-700"><span className="text-primary-600">•</span>{r}</li>))}</ul>
                </div>
              )}
              {job.skills && (
                <div className="pt-4 border-t border-gray-100 flex flex-wrap gap-2">{job.skills.map((s, i) => (<span key={i} className="badge bg-gray-100 text-gray-700 text-xs">{s}</span>))}</div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
