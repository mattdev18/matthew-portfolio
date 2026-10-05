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
