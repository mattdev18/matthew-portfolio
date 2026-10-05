import './globals.css'
import { Inter } from 'next/font/google'
import { metadata } from './metadata'

const inter = Inter({ subsets: ['latin'] })
export { metadata }

export default function RootLayout({ children }) {
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'Person',
    name: 'Matthew Bernardo Ponce',
    jobTitle: 'Email & SMS Marketing Specialist, WordPress Developer, and AI-Assisted Web Developer',
    url: 'https://www.matthewbernardoponce.com',
    email: 'matthewbponce@gmail.com',
    telephone: '+639568421863',
    address: { '@type': 'PostalAddress', addressLocality: 'Bulacan', addressCountry: 'Philippines' },
    knowsAbout: ['Klaviyo','Mailchimp','Email Marketing','SMS Marketing','Shopify','WordPress','WordPress Development','Website Development','Landing Page Development','AI-Assisted Development','Claude AI Workflows','Virtual Assistance','E-Commerce Operations','SAP ERP'],
  }
  return (
    <html lang="en" className={inter.className}>
      <head>
        <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }} />
      </head>
      <body>{children}</body>
    </html>
  )
}
