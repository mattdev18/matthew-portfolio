import { skills } from '@/data/skills'

export default function Skills() {
  return (
    <section id="skills" className="bg-white">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Skills & Capabilities</h2>
          <p className="section-subtitle">Core technical and marketing proficiencies</p>
        </div>
        <div className="grid md:grid-cols-2 gap-8 max-w-5xl mx-auto">
          {Object.entries(skills).map(([key, cat]) => (
            <div key={key} className="card">
              <h3 className="text-lg font-bold text-gray-900 mb-4 pb-2 border-b border-gray-100">{cat.title}</h3>
              <div className="flex flex-wrap gap-2">{cat.skills.map((s, i) => (<span key={i} className="badge bg-gray-100 text-gray-800 text-xs py-1.5 px-3">{s}</span>))}</div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
