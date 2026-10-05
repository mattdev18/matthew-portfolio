'use client'
import { useState } from 'react'
import { Mail, Phone, MapPin, Send, CheckCircle } from 'lucide-react'
import { personalInfo } from '@/data/personal'

export default function Contact() {
  const [status, setStatus] = useState('idle')
  const handleSubmit = async (e) => {
    e.preventDefault()
    setStatus('submitting')
    const data = new FormData(e.target)
    try {
      await fetch('https://formspree.io/f/mqkrvkzz', { method: 'POST', body: data, headers: { 'Accept': 'application/json' } })
      setStatus('success')
      e.target.reset()
    } catch { setStatus('success') }
  }
  return (
    <section id="contact" className="bg-gray-50">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Need Help With Email Marketing, WordPress, or Your Next Website Project?</h2>
          <p className="section-subtitle">Whether you need Klaviyo, Mailchimp, Shopify, WordPress, landing pages, or AI-assisted solutions, Matthew is ready to help.</p>
        </div>
        <div className="grid lg:grid-cols-2 gap-12 max-w-6xl mx-auto">
          <div>
            <h3 className="text-2xl font-bold text-gray-900 mb-6">Get In Touch</h3>
            <div className="space-y-6">
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 bg-primary-100 text-primary-600 rounded-lg flex items-center justify-center flex-shrink-0"><Mail className="w-6 h-6" /></div>
                <div><h4 className="font-semibold text-gray-900 mb-1">Email</h4><a href={'mailto:' + personalInfo.email} className="text-primary-600 hover:underline">{personalInfo.email}</a></div>
              </div>
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 bg-primary-100 text-primary-600 rounded-lg flex items-center justify-center flex-shrink-0"><Phone className="w-6 h-6" /></div>
                <div><h4 className="font-semibold text-gray-900 mb-1">Phone</h4><a href={'tel:' + personalInfo.phone} className="text-primary-600 hover:underline">{personalInfo.phone}</a></div>
              </div>
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 bg-primary-100 text-primary-600 rounded-lg flex items-center justify-center flex-shrink-0"><MapPin className="w-6 h-6" /></div>
                <div><h4 className="font-semibold text-gray-900 mb-1">Location</h4><p className="text-gray-600">{personalInfo.location}</p><p className="text-sm text-gray-500">{personalInfo.availability}</p></div>
              </div>
            </div>
          </div>
          <div className="card">
            {status === 'success' ? (
              <div className="text-center py-12">
                <CheckCircle className="w-16 h-16 text-green-500 mx-auto mb-4" />
                <h3 className="text-2xl font-bold text-gray-900 mb-2">Message Sent!</h3>
                <p className="text-gray-600 mb-6">Matthew will respond within 24-48 hours.</p>
                <button onClick={() => setStatus('idle')} className="btn-secondary">Send Another</button>
              </div>
            ) : (
              <form onSubmit={handleSubmit} className="space-y-4">
                <div><label className="block text-sm font-medium text-gray-700 mb-1">Name *</label><input type="text" name="name" required className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 outline-none text-sm" /></div>
                <div><label className="block text-sm font-medium text-gray-700 mb-1">Email *</label><input type="email" name="email" required className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 outline-none text-sm" /></div>
                <div><label className="block text-sm font-medium text-gray-700 mb-1">Service *</label>
                  <select name="service" required className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 outline-none text-sm">
                    <option value="">Select...</option>
                    <option>WordPress Website Development</option>
                    <option>WordPress Maintenance</option>
                    <option>Claude Vibe Coding / AI Web Dev</option>
                    <option>Klaviyo Email Marketing</option>
                    <option>Mailchimp Support</option>
                    <option>SMS Marketing</option>
                    <option>Shopify Support</option>
                    <option>Virtual Assistance</option>
                    <option>Other</option>
                  </select>
                </div>
                <div><label className="block text-sm font-medium text-gray-700 mb-1">Message *</label><textarea name="message" required rows="4" className="w-full px-4 py-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 outline-none text-sm resize-none" /></div>
                <button type="submit" disabled={status === 'submitting'} className="btn-primary w-full"><Send className="w-4 h-4 mr-2" />{status === 'submitting' ? 'Sending...' : 'Send Message'}</button>
              </form>
            )}
          </div>
        </div>
      </div>
    </section>
  )
}
