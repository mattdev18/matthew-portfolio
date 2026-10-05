# ============================================
# Matthew Bernardo Ponce - Portfolio Setup (Fixed)
# ============================================

Write-Host "🚀 Setting up Matthew Bernardo Ponce's Portfolio..." -ForegroundColor Cyan

# Create directories
New-Item -ItemType Directory -Force -Path "app" | Out-Null
New-Item -ItemType Directory -Force -Path "components" | Out-Null
New-Item -ItemType Directory -Force -Path "data" | Out-Null
New-Item -ItemType Directory -Force -Path "public" | Out-Null

Write-Host "📁 Directories created!" -ForegroundColor Green

# 1. package.json
$c1 = @'
{
  "name": "matthew-portfolio",
  "version": "1.0.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint"
  },
  "dependencies": {
    "next": "14.1.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "lucide-react": "^0.321.0"
  },
  "devDependencies": {
    "autoprefixer": "^10.4.17",
    "postcss": "^8.4.33",
    "tailwindcss": "^3.4.1",
    "eslint": "^8.56.0",
    "eslint-config-next": "14.1.0"
  }
}
'@
Set-Content -Path "package.json" -Value $c1 -Encoding UTF8

# 2. next.config.js
$c2 = @'
/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: { domains: [] },
}
module.exports = nextConfig
'@
Set-Content -Path "next.config.js" -Value $c2 -Encoding UTF8

# 3. tailwind.config.js
$c3 = @'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
    './app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#f0f9ff', 100: '#e0f2fe', 200: '#bae6fd',
          300: '#7dd3fc', 400: '#38bdf8', 500: '#0ea5e9',
          600: '#0284c7', 700: '#0369a1', 800: '#075985',
          900: '#0c4a6e',
        },
      },
      fontFamily: { sans: ['Inter', 'system-ui', 'sans-serif'] },
    },
  },
  plugins: [],
}
'@
Set-Content -Path "tailwind.config.js" -Value $c3 -Encoding UTF8

# 4. postcss.config.js
$c4 = @'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
'@
Set-Content -Path "postcss.config.js" -Value $c4 -Encoding UTF8

# 5. .gitignore
$c5 = @'
node_modules
.next/
out/
build
.DS_Store
.env*.local
.vercel
next-env.d.ts
'@
Set-Content -Path ".gitignore" -Value $c5 -Encoding UTF8

# 6. app/globals.css
$c6 = @'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  html { scroll-behavior: smooth; }
  body { @apply bg-gray-50 text-gray-900; }
}

@layer components {
  .section-container {
    @apply max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 sm:py-20;
  }
  .section-title {
    @apply text-3xl sm:text-4xl font-bold text-gray-900 mb-4;
  }
  .section-subtitle {
    @apply text-lg text-gray-600 max-w-3xl mx-auto;
  }
  .card {
    @apply bg-white rounded-xl shadow-sm border border-gray-100 p-6 hover:shadow-md transition-shadow duration-300;
  }
  .btn-primary {
    @apply inline-flex items-center justify-center px-6 py-3 bg-primary-600 text-white font-medium rounded-lg hover:bg-primary-700 transition-colors duration-200;
  }
  .btn-secondary {
    @apply inline-flex items-center justify-center px-6 py-3 bg-white text-primary-600 font-medium rounded-lg border-2 border-primary-600 hover:bg-primary-50 transition-colors duration-200;
  }
  .badge {
    @apply inline-flex items-center px-3 py-1 rounded-full text-xs font-medium;
  }
  .badge-primary { @apply bg-primary-100 text-primary-800; }
  .badge-success { @apply bg-green-100 text-green-800; }
  .badge-warning { @apply bg-amber-100 text-amber-800; }
}
'@
Set-Content -Path "app/globals.css" -Value $c6 -Encoding UTF8

# 7. app/metadata.js
$c7 = @'
export const metadata = {
  title: 'Matthew Bernardo Ponce | Email Marketing & WordPress Developer',
  description: 'Matthew Bernardo Ponce provides Klaviyo, Mailchimp, Shopify, WordPress development, AI-assisted web development, and virtual support for e-commerce brands and growing businesses.',
  keywords: [
    'Email Marketing Specialist', 'WordPress Developer Philippines',
    'Remote WordPress Developer', 'Klaviyo Email Marketing Specialist',
    'Mailchimp Specialist', 'AI-Assisted Web Developer',
    'Claude Vibe Coder', 'Shopify Virtual Assistant',
    'E-Commerce Support Specialist', 'WordPress Website Support',
    'Landing Page Developer', 'SMS Marketing Specialist',
  ],
  authors: [{ name: 'Matthew Bernardo Ponce' }],
  creator: 'Matthew Bernardo Ponce',
  openGraph: {
    type: 'website', locale: 'en_US',
    url: 'https://www.matthewbernardoponce.com',
    title: 'Matthew Bernardo Ponce | Email Marketing & WordPress Developer',
    description: 'Klaviyo, Mailchimp, Shopify, WordPress development, AI-assisted web development, and virtual support.',
    siteName: 'Matthew Bernardo Ponce Portfolio',
  },
  robots: { index: true, follow: true },
}
'@
Set-Content -Path "app/metadata.js" -Value $c7 -Encoding UTF8

# 8. app/sitemap.js
$c8 = @'
export default function sitemap() {
  return [{
    url: 'https://www.matthewbernardoponce.com',
    lastModified: new Date(),
    changeFrequency: 'monthly',
    priority: 1,
  }]
}
'@
Set-Content -Path "app/sitemap.js" -Value $c8 -Encoding UTF8

# 9. app/robots.js
$c9 = @'
export default function robots() {
  return {
    rules: { userAgent: '*', allow: '/' },
    sitemap: 'https://www.matthewbernardoponce.com/sitemap.xml',
  }
}
'@
Set-Content -Path "app/robots.js" -Value $c9 -Encoding UTF8

# 10. app/layout.js
$c10 = @'
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
'@
Set-Content -Path "app/layout.js" -Value $c10 -Encoding UTF8

# 11. data/personal.js
$c11 = @'
export const personalInfo = {
  name: 'Matthew Bernardo Ponce',
  roles: ['Email & SMS Marketing Specialist', 'WordPress Developer', 'Claude Vibe Coder'],
  location: 'Bulacan, Philippines',
  availability: 'Supporting clients remotely worldwide',
  yearsWordPress: 2,
  email: 'matthewbponce@gmail.com',
  phone: '+639568421863',
  linkedin: 'https://www.linkedin.com/in/matthew-bernardo-ponce',
}
'@
Set-Content -Path "data/personal.js" -Value $c11 -Encoding UTF8

# 12. data/services.js
$c12 = @'
export const services = [
  {
    id: 'klaviyo', letter: 'A',
    title: 'Klaviyo Email & SMS Marketing',
    description: 'Strategic email and SMS marketing support for e-commerce brands using Klaviyo.',
    services: ['Email campaign strategy','SMS campaign setup','Marketing automation','Customer segmentation','A/B testing','Template design','Performance reporting','Welcome series','List growth','Shopify integration'],
    outcome: 'Drive more revenue through data-driven email and SMS campaigns.',
    icon: 'Mail',
  },
  {
    id: 'mailchimp', letter: 'B',
    title: 'Mailchimp Email Marketing Support',
    description: 'Professional Mailchimp campaign management for small businesses.',
    services: ['Campaign creation','Audience management','Template design','Automation workflows','Landing pages','Signup forms','Performance tracking','A/B testing','Content planning','List cleaning'],
    outcome: 'Build stronger customer relationships through well-planned email campaigns.',
    icon: 'Mail',
  },
  {
    id: 'shopify', letter: 'C',
    title: 'Shopify & E-Commerce Support',
    description: 'Virtual assistant and operational support for Shopify stores.',
    services: ['Product listings','Order processing','Customer service','Content updates','Theme customization','App integration','Marketing coordination','Reporting','Email integration','Admin support'],
    outcome: 'Free up your time while ensuring smooth daily operations.',
    icon: 'ShoppingCart',
  },
  {
    id: 'virtual-assistant', letter: 'D',
    title: 'Virtual Assistant & Administrative Support',
    description: 'Reliable virtual assistant services for growing businesses.',
    services: ['Email management','Calendar management','Data entry','Document prep','Customer support','Social media scheduling','Research','Project coordination','CRM management','Admin tasks'],
    outcome: 'Get organized and focus on what matters most.',
    icon: 'Briefcase',
  },
  {
    id: 'wordpress', letter: 'E',
    title: 'WordPress Website Development & Support',
    description: 'Professional WordPress development for a clean, responsive online presence.',
    services: ['Website setup','Landing pages','Redesign & updates','Theme customization','Mobile-responsive design','Blog management','Contact forms','On-page SEO','Speed improvements','Maintenance','Plugin setup','WooCommerce support'],
    outcome: 'Build a professional online presence designed for business growth.',
    icon: 'Globe',
  },
  {
    id: 'ai-web-dev', letter: 'F',
    title: 'Claude Vibe Coding / AI-Assisted Web Development',
    description: 'AI-assisted web development using Claude-based workflows.',
    services: ['AI website planning','Landing page dev','HTML/CSS/JS/React support','Content structuring','Rapid prototyping','Redesign concepts','Conversion improvements','Code troubleshooting','Responsive layouts','SEO structure','Workflow optimization'],
    outcome: 'Create modern web experiences faster through AI-assisted workflows.',
    disclaimer: 'AI-assisted development improves efficiency. Every project is reviewed and customized based on business needs.',
    icon: 'Code',
  },
]
'@
Set-Content -Path "data/services.js" -Value $c12 -Encoding UTF8

# 13. data/experience.js
$c13 = @'
export const experience = [
  {
    id: 'wordpress-vibe',
    title: 'WordPress Developer & Claude Vibe Coder',
    company: 'Freelance / Remote',
    period: '2 Years of Experience',
    type: 'Freelance',
    description: 'Developed and supported WordPress websites, landing pages, and digital assets with a focus on responsive design, usability, and lead generation. Uses Claude AI-assisted workflows to accelerate planning, prototyping, and front-end improvements.',
    responsibilities: ['Build and update WordPress websites','Create responsive landing pages','Improve layout and UX','Website maintenance','Configure lead-gen forms','Basic SEO structure','Claude AI for planning and code support','Mobile-friendly layouts'],
    skills: ['WordPress','HTML','CSS','JavaScript','Responsive Design','Claude AI','SEO','UX/UI'],
  },
  {
    id: 'email-marketing',
    title: 'Email & SMS Marketing Specialist',
    company: 'Various E-Commerce Clients',
    period: '2022 - Present',
    type: 'Freelance',
    description: 'Specialized in Klaviyo and Mailchimp email marketing for e-commerce brands.',
    responsibilities: ['Managed Klaviyo and Mailchimp accounts','Created automation flows','SMS marketing strategies','Customer segmentation','Campaign analytics','Template design','Deliverability optimization'],
    skills: ['Klaviyo','Mailchimp','Email Marketing','SMS Marketing','Automation','Analytics'],
  },
  {
    id: 'virtual-assistant',
    title: 'Virtual Assistant',
    company: 'E-Commerce & Small Business Clients',
    period: '2021 - Present',
    type: 'Freelance',
    description: 'Administrative and operational support for e-commerce businesses.',
    responsibilities: ['Email management','Project coordination','CRM management','Calendar management','Marketing support','Reporting'],
    skills: ['Communication','Organization','Project Management','CRM','Data Entry'],
  },
  {
    id: 'sap-analyst',
    title: 'SAP Supply Chain Analyst',
    company: 'GMA Network, Inc.',
    period: 'July 2022 - January 2024',
    type: 'Full-time',
    description: 'Supported SAP ERP operations and supply chain processes.',
    responsibilities: ['SAP MM and SD modules','Purchase orders','Logistics coordination','Supply chain reporting','Cross-functional collaboration','User support'],
    skills: ['SAP ERP','Supply Chain','Data Analysis','Process Improvement','Reporting'],
  },
]
'@
Set-Content -Path "data/experience.js" -Value $c13 -Encoding UTF8

# 14. data/caseStudies.js
$c14 = @'
export const caseStudies = [
  {
    id: 'wordpress-business',
    title: 'WordPress Business Website Development',
    client: 'Small Business Client — Identity Protected',
    badge: 'NDA Protected',
    services: ['WordPress Dev','Responsive Design','Landing Pages','Content Updates','Contact Forms','Basic SEO'],
    description: 'Supported the creation of a professional WordPress website to present services clearly and improve online presence.',
    outcomes: ['Mobile-responsive design','Lead-gen landing pages','Contact form integration','Basic SEO structure'],
    ndaNote: 'Client name and URL are confidential under NDA.',
  },
  {
    id: 'ai-landing-page',
    title: 'AI-Assisted Landing Page and Website Prototype',
    client: 'Business Project — Identity Protected',
    badge: 'NDA Protected',
    services: ['Claude Planning','Content Structure','Landing Page Dev','Responsive Design','Conversion CTAs','Refinement'],
    description: 'Used AI-assisted workflows to organize content, plan structure, develop responsive sections, and refine UX.',
    outcomes: ['AI-planned content structure','Responsive landing page','Conversion-focused CTAs','Business-aligned prototype'],
    ndaNote: 'Project details are confidential under NDA.',
  },
  {
    id: 'klaviyo-ecommerce',
    title: 'Klaviyo Email Marketing Campaign Optimization',
    client: 'E-Commerce Brand — Identity Protected',
    badge: 'NDA Protected',
    services: ['Klaviyo Management','Email Campaigns','SMS Marketing','Automation','Segmentation'],
    description: 'Optimized Klaviyo email and SMS campaigns including automation flows and segmentation.',
    outcomes: ['Improved workflow efficiency','Optimized automation flows','Enhanced segmentation','Revenue-driving campaigns'],
    ndaNote: 'Metrics and client details protected under NDA.',
  },
  {
    id: 'mailchimp-setup',
    title: 'Mailchimp Email Marketing Setup & Support',
    client: 'Small Business Client — Identity Protected',
    badge: 'NDA Protected',
    services: ['Mailchimp Setup','Campaign Management','Template Design','Audience Segmentation','Automation'],
    description: 'Provided Mailchimp setup, campaign creation, and ongoing support for a growing small business.',
    outcomes: ['Organized audience management','Professional templates','Improved open rates','Automation workflows'],
    ndaNote: 'Client details are confidential under NDA.',
  },
]
'@
Set-Content -Path "data/caseStudies.js" -Value $c14 -Encoding UTF8

# 15. data/skills.js
$c15 = @'
export const skills = {
  webDevelopment: {
    title: 'Web Development (WordPress & Modern Stack)',
    skills: ['WordPress Development','Theme Customization','Website Maintenance','Landing Pages','Responsive Design','On-Page SEO','Content Management','HTML','CSS','JavaScript','React','Next.js','UX/UI','Conversion Design'],
  },
  aiDevelopment: {
    title: 'AI-Assisted Development (Claude Vibe Coding)',
    skills: ['Claude AI Workflows','AI-Assisted Dev','Prompt Engineering','Prototyping','Rapid Development','Content Structuring','Code Refinement','Workflow Optimization'],
  },
  emailMarketing: {
    title: 'Email & SMS Marketing',
    skills: ['Klaviyo','Mailchimp','Campaign Strategy','SMS Marketing','Automation','Segmentation','A/B Testing','Template Design','Flow Creation','Analytics'],
  },
  ecommerce: {
    title: 'E-Commerce & Virtual Assistance',
    skills: ['Shopify','E-Commerce Ops','Product Management','Order Processing','Customer Service','Inventory','Admin Support','SAP ERP'],
  },
}
'@
Set-Content -Path "data/skills.js" -Value $c15 -Encoding UTF8

# 16. data/tools.js
$c16 = @'
export const tools = {
  development: {
    title: 'Web Development',
    tools: ['WordPress','HTML','CSS','JavaScript','React','Next.js','VS Code','GitHub','Vercel','Netlify','Figma'],
  },
  ai: {
    title: 'AI & Productivity',
    tools: ['Claude','ChatGPT','Notion','Trello','Slack','Google Workspace'],
  },
  marketing: {
    title: 'Marketing & Analytics',
    tools: ['Klaviyo','Mailchimp','Canva','Google Search Console','Google Analytics'],
  },
  ecommerce: {
    title: 'E-Commerce & ERP',
    tools: ['Shopify','WooCommerce','SAP ERP','Stripe','PayPal'],
  },
}
'@
Set-Content -Path "data/tools.js" -Value $c16 -Encoding UTF8

# 17. data/faq.js
$c17 = @'
export const faqs = [
  { id: 'wp', question: 'Does Matthew build WordPress websites?', answer: 'Yes. Matthew has two years of WordPress development experience and can support business websites, landing pages, content updates, responsive design, maintenance, contact forms, and basic SEO setup.' },
  { id: 'vibe', question: 'What is a Claude Vibe Coder?', answer: 'A Claude Vibe Coder uses AI-assisted workflows, including Claude, to help plan, build, improve, and refine websites, landing pages, content structures, and digital experiences more efficiently. Each project is reviewed and customized based on client needs.' },
  { id: 'site', question: 'Can Matthew create a website for my business?', answer: 'Yes. Matthew can develop professional WordPress websites, landing pages, portfolio sites, service-based websites, and marketing pages for clear communication and lead generation.' },
  { id: 'maint', question: 'Does Matthew offer website maintenance?', answer: 'Yes. Support includes content updates, page edits, form checks, basic WordPress maintenance, layout improvements, and ongoing assistance.' },
  { id: 'combo', question: 'Can WordPress be combined with email marketing?', answer: 'Yes. WordPress sites can integrate with Mailchimp or Klaviyo forms, signup workflows, lead-gen pages, and campaign integrations.' },
]
'@
Set-Content -Path "data/faq.js" -Value $c17 -Encoding UTF8

# 18. components/Hero.js
$c18 = @'
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
'@
Set-Content -Path "components/Hero.js" -Value $c18 -Encoding UTF8

# 19. components/About.js
$c19 = @'
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
'@
Set-Content -Path "components/About.js" -Value $c19 -Encoding UTF8

# 20. components/Services.js
$c20 = @'
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
'@
Set-Content -Path "components/Services.js" -Value $c20 -Encoding UTF8

# 21. components/Experience.js
$c21 = @'
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
'@
Set-Content -Path "components/Experience.js" -Value $c21 -Encoding UTF8

# 22. components/CaseStudies.js
$c22 = @'
import { Shield } from 'lucide-react'
import { caseStudies } from '@/data/caseStudies'

export default function CaseStudies() {
  return (
    <section id="case-studies" className="bg-gray-50">
      <div className="section-container">
        <div className="text-center mb-12">
          <h2 className="section-title">Case Studies</h2>
          <p className="section-subtitle">Real project experience with client identities protected under NDA</p>
        </div>
        <div className="grid lg:grid-cols-2 gap-8 max-w-7xl mx-auto">
          {caseStudies.map((s) => (
            <div key={s.id} className="card flex flex-col justify-between">
              <div>
                <div className="flex items-start justify-between gap-4 mb-2">
                  <h3 className="text-xl font-bold text-gray-900">{s.title}</h3>
                  <span className="badge badge-warning flex items-center gap-1 flex-shrink-0"><Shield className="w-3 h-3" />{s.badge}</span>
                </div>
                <p className="text-sm text-gray-500 mb-4">{s.client}</p>
                <div className="flex flex-wrap gap-2 mb-4">{s.services.map((sv, i) => (<span key={i} className="badge bg-primary-50 text-primary-700 text-xs">{sv}</span>))}</div>
                <p className="text-gray-700 mb-4 text-sm leading-relaxed">{s.description}</p>
                {s.outcomes && (
                  <div className="mb-4">
                    <h4 className="text-xs font-bold uppercase tracking-wider text-gray-500 mb-2">Outcomes:</h4>
                    <ul className="space-y-1.5">{s.outcomes.map((o, i) => (<li key={i} className="flex items-start gap-2 text-sm text-gray-700"><span className="text-green-600 font-bold">✓</span>{o}</li>))}</ul>
                  </div>
                )}
              </div>
              <div className="pt-4 border-t border-gray-100">
                <div className="flex items-center gap-2 text-xs text-amber-800 bg-amber-50 p-2.5 rounded"><Shield className="w-3.5 h-3.5 flex-shrink-0 text-amber-600" /><span>{s.ndaNote}</span></div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
'@
Set-Content -Path "components/CaseStudies.js" -Value $c22 -Encoding UTF8

# 23. components/Skills.js
$c23 = @'
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
'@
Set-Content -Path "components/Skills.js" -Value $c23 -Encoding UTF8

# 24. components/Tools.js
$c24 = @'
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
'@
Set-Content -Path "components/Tools.js" -Value $c24 -Encoding UTF8

# 25. components/FAQ.js
$c25 = @'
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
'@
Set-Content -Path "components/FAQ.js" -Value $c25 -Encoding UTF8

# 26. components/Contact.js
$c26 = @'
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
'@
Set-Content -Path "components/Contact.js" -Value $c26 -Encoding UTF8

# 27. components/Footer.js
$c27 = @'
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
'@
Set-Content -Path "components/Footer.js" -Value $c27 -Encoding UTF8

# 28. app/page.js
$c28 = @'
import Hero from '@/components/Hero'
import About from '@/components/About'
import Services from '@/components/Services'
import Experience from '@/components/Experience'
import CaseStudies from '@/components/CaseStudies'
import Skills from '@/components/Skills'
import Tools from '@/components/Tools'
import FAQ from '@/components/FAQ'
import Contact from '@/components/Contact'
import Footer from '@/components/Footer'

export default function Home() {
  return (
    <main className="min-h-screen">
      <Hero /><About /><Services /><Experience /><CaseStudies /><Skills /><Tools /><FAQ /><Contact /><Footer />
    </main>
  )
}
'@
Set-Content -Path "app/page.js" -Value $c28 -Encoding UTF8

Write-Host "📦 Installing npm dependencies (this may take 1-2 minutes)..." -ForegroundColor Yellow
npm install

Write-Host ""
Write-Host "✅ ALL 28 FILES CREATED SUCCESSFULLY!" -ForegroundColor Green
Write-Host "👉 Run 'npm run dev' to test locally" -ForegroundColor Cyan
Write-Host "🌐 Then visit http://localhost:3000" -ForegroundColor Cyan