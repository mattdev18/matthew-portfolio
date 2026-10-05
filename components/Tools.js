import { tools } from '@/data/tools'

export default function Tools() {
  return (
    <section id="tools" className="bg-gray-50">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Tools & Ecosystem</h2>
          <p className="section-subtitle">Platforms and developer environments used for delivery</p>
        </div>
        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6 max-w-6xl mx-auto">
          {Object.entries(tools).map(([key, cat]) => (
            <div key={key} className="card">
              <h3 className="text-md font-bold text-gray-900 mb-4 pb-2 border-b border-gray-100">{cat.title}</h3>
              <div className="flex flex-wrap gap-2">{cat.tools.map((t, i) => (<span key={i} className="badge badge-primary text-xs">{t}</span>))}</div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
