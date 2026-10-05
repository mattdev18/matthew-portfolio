'use client'
import { useState } from 'react'
import { ChevronDown, ChevronUp } from 'lucide-react'
import { faqs } from '@/data/faq'

export default function FAQ() {
  const [openId, setOpenId] = useState(null)
  return (
    <section id="faq" className="bg-white">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Frequently Asked Questions</h2>
          <p className="section-subtitle">Common questions about WordPress, AI workflows, and email marketing</p>
        </div>
        <div className="max-w-3xl mx-auto space-y-4">
          {faqs.map((faq) => (
            <div key={faq.id} className="card cursor-pointer" onClick={() => setOpenId(openId === faq.id ? null : faq.id)}>
              <div className="flex items-center justify-between">
                <h3 className="text-md font-semibold text-gray-900 pr-4">{faq.question}</h3>
                {openId === faq.id ? <ChevronUp className="w-5 h-5 text-primary-600 flex-shrink-0" /> : <ChevronDown className="w-5 h-5 text-gray-400 flex-shrink-0" />}
              </div>
              {openId === faq.id && (
                <div className="mt-4 pt-4 border-t border-gray-100"><p className="text-gray-700 text-sm leading-relaxed">{faq.answer}</p></div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
