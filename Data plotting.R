library(dplyr)
library(ggplot2)

dataset <- read.csv('dataset_superstore_simple.csv')

#Menambahkan judul, subjudul, caption, mengubah xlab dan ylab
plot1 <- ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(colour = '#b714db') +
  geom_smooth(method = 'lm') +
  labs(title = 'Scatter plot sales vs profit',
       subtitle = 'Based on dataset superstore',
       caption = 'R Language Tutorial') + 
  xlab("Order Sales") + ylab("Order Profit") +
  xlim(c(0,7500)) + ylim(c(-2500,2500))
plot1

#Menambahkan legend
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(colour=category), size = 4) +
  geom_smooth(method = 'lm', colour = '#3b1724', linetype = 'dotdash', size=2) +
  labs(title = 'Scatter plot sales vs profit',
       subtitle = 'Based on dataset superstore',
       caption = 'R Language Tutorial') + 
  xlab("Order Sales") + ylab("Order Profit") +
  xlim(c(0,7500)) + ylim(c(-2500,2500)) +
  theme(
    plot.title = element_text(color = 'blue', size = 15, face = 'bold'),
    plot.subtitle = element_text(size = 12, face = 'italic'),
    legend.position = 'bottom'
  )

#Legend di dalam dengan titik koordinat
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(colour=category), size = 4) +
  geom_smooth(method = 'lm', colour = '#3b1724', linetype = 'dotdash', size=2) +
  labs(title = 'Scatter plot sales vs profit',
       subtitle = 'Based on dataset superstore',
       caption = 'R Language Tutorial') + 
  xlab("Order Sales") + ylab("Order Profit") +
  xlim(c(0,7500)) + ylim(c(-2500,2500)) +
  theme(
    plot.title = element_text(color = 'blue', size = 15, face = 'bold'),
    plot.subtitle = element_text(size = 12, face = 'italic')
  ) +
  theme(
    legend.position = c(0.8,0.2),
    legend.title = element_text(color = 'blue', size = 12, face = 'bold'),
    legend.text = element_text(color = 'red')
  )

#Mengatur ukuran, warna, dan face dari tulisan judul serta subjudul
ggplot(dataset, aes(x = sales, y = profit)) + 
  geom_point(aes(colour=category), size = 4, shape = 18) +
  geom_smooth(method = 'lm', colour = '#3b1724', linetype = 'dotdash', size=2) +
  labs(title = 'Scatter plot sales vs profit',
       subtitle = 'Based on dataset superstore',
       caption = 'R Language Tutorial') + 
  xlab("Order Sales") + ylab("Order Profit") +
  xlim(c(0,7500)) + ylim(c(-2500,2500))

#Cara menyimpan gambar
ggsave('tes.png')
ggsave('plot1.png',plot1)
