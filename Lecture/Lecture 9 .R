Grades <- read.file("http://tiny.cc/mosaic/grades.csv")

joined_tables <- Grades %>%
  select(sid, sessionID) %>%
  left_join(Courses %>% select(enroll, sessionID), by=c("sessionID"="sessionID"))
head(joined_tables, 10)

Grades <- read.file("http://tiny.cc/mosaic/grades.csv")
Courses <- read.file("http://tiny.cc/mosaic/courses.csv")

joined_tables <- Grades %>%
  select(sid, sessionID) %>%
  left_join(Courses %>% select(enroll, sessionID), by=c("sessionID"="sessionID")) %>%
head(joined_tables, 10)


avg_class_size <- joined_tables %>%
  group_by(sid) %>%
  summarise(avg = mean(enroll, na.rm = TRUE))

avg_class_size %>% ggplot(aes(x = sid, y = avg)) + geom_point() + scale_x_discrete(breaks = NULL)

good_grades <- Grades %>%
  filter(grade %in% c("A", "A-"))

__________________________________ 
** CORRECT** 
myBirths78 <- Births78 %>% rename(Wday = wday)
head(myBirths78)
head(month(Births78$date)) 

myBirthsavg <- 
  myBirths78 %>%
  mutate(Month = month(date)) %>%
  group_by(Wday, Month) %>%
  summarise(avg = mean(births))
head(myBirthsavg)

plot1 <- myBirthsavg %>% ggplot(aes(x = Wday, y = avg)) +geom_point(aes(color = as.factor(Month)))
plot1

geom_vline(data = myHolidays, aes(xintercept = wday(date), color = wday(date, label= TRUE)))


Holidays <- read.csv("http://tiny.cc/dcf/US-Holidays.csv") %>%
  mutate(date = lubridate::dmy(date)) %>%
  filter(month %in% c(11,12))
  filter(month(date) %in% my_months, 
head(Holidays)

""" Inner join""" 
Left %>% 
  inner_join(Right, by = c("name" = "country"))

hist(precip)
as.data.frame(precip) %>% ggplot(aes(precip)) + geom_histogram(binwidth = 10)
