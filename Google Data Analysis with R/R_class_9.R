# Data visualization:
# benefits of ggplot2
# * Create different types of plots
# * Customize the look and fell of plots
# * Create high quality visuals
# * Combine data manipulation and visualization

# Key elements in ggplot2
# * Aesthetics: A visual property of an object in your plot
# * Geoms: The geometric object used to represent your data
# * Facets: Let you display smaller groups, or subsets, of your data
# * Labels and annotations: Let you customize your plot

# start with ggplot2

library("ggplot2")
library("palmerpenguins")

# Aesthetics

# 1.Start with the ggplot function and choose a dataset to work with
# 2.Add a geom_function to display your data
# 3.Map the variables you want to plot in the arguments of the aes() function
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,alpha=species,shape=species))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species,shape=species),color="blue")

# Geoms

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

# smooth the plot
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+
  geom_line(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=cut,color=cut))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity,color=cut))

# Facet

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

# Annotation

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="blue",fontface="bold",size=4.5,angle=25)


