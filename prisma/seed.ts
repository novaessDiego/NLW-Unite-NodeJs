import { prisma } from '../src/lib/prisma'

async function seed() {
  await prisma.event.create({
    data: {
      id: 'aa92cc76-dd53-4539-9509-c2cfd0315b10',
      title: 'Unite Summit',
      slug: 'unite-summi',
      details: 'Um evento incrível para devs',
      maximumAttendees: 120,
    }
  })
}

seed().then(() => {
  console.log('Database seeded!')
  prisma.$disconnect()
})