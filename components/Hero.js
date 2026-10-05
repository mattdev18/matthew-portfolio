import { Mail, MapPin, Award } from 'lucide-react'
import { personalInfo } from '@/data/personal'

export default function Hero() {
  return (
    <section className="relative bg-gradient-to-br from-primary-600 via-primary-700 to-primary-800 text-white py-20 sm:py-28">
      <div className="section-container">
        <div className="max-w-4xl mx-auto text-center">
          <div className="inline-flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-full mb-6">
            <Award className="w-4 h-4 text-primary-200" />
            <span className="text-sm font-medium">{personalInfo.yearsWordPress} Years of WordPress Development Experience</span>
          </div>
          <h1 className="text-4xl sm:text-5xl lg:text-6xl font-bold mb-6 leading-tight">
            Email, SMS & Website Support for Growing Online Businesses
          </h1>
          <div className="flex flex-wrap items-center justify-center gap-3 mb-6 text-lg font-medium text-primary-100">
            {personalInfo.roles.map((role, i) => (
              <span key={i} className="flex items-center">
                {role}{i < personalInfo.roles.length - 1 && <span className="mx-3 text-primary-300">•</span>}
              </span>
            ))}
          </div>
          <p className="text-xl text-primary-100 mb-8 max-w-3xl mx-auto leading-relaxed">
            I help e-commerce brands and growing businesses improve customer communication, marketing workflows, and online presence through Klaviyo, Mailchimp, Shopify support, WordPress development, and AI-assisted web solutions.
          </p>
          <div className="flex items-center justify-center gap-2 text-primary-200 mb-10 text-sm">
            <MapPin className="w-4 h-4" />
            <span>Based in {personalInfo.location} • {personalInfo.availability}</span>
          </div>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <a href="#contact" className="btn-primary bg-white text-primary-700 hover:bg-primary-50">
              <Mail className="w-5 h-5 mr-2" /> Get In Touch
            </a>
            <a href="#services" className="btn-secondary border-white text-white hover:bg-white/10">
              View Services
            </a>
          </div>
        </div>
      </div>
    </section>
  )
}
