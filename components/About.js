import { CheckCircle, Zap, Users, Target } from 'lucide-react'

export default function About() {
  const cards = [
    { icon: CheckCircle, title: 'Email & SMS Marketing', desc: 'Klaviyo and Mailchimp expertise' },
    { icon: Zap, title: 'WordPress Development', desc: '2 years building responsive sites' },
    { icon: Target, title: 'AI-Assisted Web Dev', desc: 'Efficient Claude-based workflows' },
    { icon: Users, title: 'Shopify & E-Commerce', desc: 'Operations and virtual assistance' },
  ]
  return (
    <section id="about" className="bg-white">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">About Matthew</h2>
          <p className="section-subtitle">Email marketing specialist, WordPress developer, and virtual assistant helping businesses grow</p>
        </div>
        <div className="max-w-4xl mx-auto mb-12 text-gray-700 space-y-6 leading-relaxed">
          <p>Matthew Bernardo Ponce is an email marketing specialist, WordPress developer, and virtual assistant based in Bulacan, Philippines, supporting e-commerce brands and growing businesses remotely worldwide.</p>
          <p>With expertise in <strong>Klaviyo</strong> and <strong>Mailchimp</strong>, Matthew helps businesses create organized, revenue-driving email and SMS marketing campaigns.</p>
          <p>In addition to email marketing, <strong>Matthew is a WordPress Developer with two years of experience</strong> building and maintaining professional websites. He also works as a <strong>Claude Vibe Coder</strong>, using AI-assisted development workflows to create efficient, user-focused digital solutions.</p>
          <p className="text-sm text-gray-500 italic">Matthew uses AI-assisted development workflows, including Claude, to efficiently plan, build, refine, and improve websites, landing pages, content structures, and digital experiences.</p>
        </div>
        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
          {cards.map((c, i) => {
            const Icon = c.icon
            return (
              <div key={i} className="card text-center">
                <div className="inline-flex items-center justify-center w-12 h-12 bg-primary-100 text-primary-600 rounded-lg mb-4"><Icon className="w-6 h-6" /></div>
                <h3 className="text-lg font-semibold text-gray-900 mb-2">{c.title}</h3>
                <p className="text-sm text-gray-600">{c.desc}</p>
              </div>
            )
          })}
        </div>
      </div>
    </section>
  )
}
