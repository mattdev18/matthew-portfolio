import { Mail, Phone, MapPin } from 'lucide-react'
import { personalInfo } from '@/data/personal'

export default function Footer() {
  return (
    <footer className="bg-gray-900 text-gray-300">
      <div className="section-container">
        <div className="grid md:grid-cols-3 gap-8 mb-8">
          <div>
            <h3 className="text-white font-bold text-lg mb-3">{personalInfo.name}</h3>
            <p className="text-sm text-gray-400 mb-3">Email & SMS Marketing Specialist, WordPress Developer, and Claude Vibe Coder.</p>
            <p className="text-xs text-gray-500">Based in {personalInfo.location}</p>
          </div>
          <div>
            <h4 className="text-white font-semibold mb-3">Navigation</h4>
            <ul className="space-y-2 text-sm">
              {['about','services','experience','case-studies','faq','contact'].map(s => (
                <li key={s}><a href={'#' + s} className="hover:text-primary-400 capitalize">{s.replace('-',' ')}</a></li>
              ))}
            </ul>
          </div>
          <div>
            <h4 className="text-white font-semibold mb-3">Contact</h4>
            <ul className="space-y-2 text-sm text-gray-400">
              <li className="flex items-center gap-2"><Mail className="w-4 h-4 text-primary-400" /><a href={'mailto:' + personalInfo.email} className="hover:text-white">{personalInfo.email}</a></li>
              <li className="flex items-center gap-2"><Phone className="w-4 h-4 text-primary-400" /><span>{personalInfo.phone}</span></li>
              <li className="flex items-center gap-2"><MapPin className="w-4 h-4 text-primary-400" /><span>{personalInfo.location}</span></li>
            </ul>
          </div>
        </div>
        <div className="pt-8 border-t border-gray-800 text-center text-xs text-gray-500">
          <p>&copy; {new Date().getFullYear()} {personalInfo.name}. All rights reserved.</p>
        </div>
      </div>
    </footer>
  )
}
