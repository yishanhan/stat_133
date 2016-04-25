Minneapolis2013 %>%
  filter(First == "BETSY HODGES", Second == "BETSY HODGES") %>%
  tally() 
  
Minneapolis2013 %>% 
  group_by(First, Second) %>%
  tally() %>%
  filter(First == "BETSY HODGES", Second == "BETSY HODGES")

BabyNames %>% 
  group_by(name) %>%
  summarise(total = sum(count)) %>%
  arrange(desc(total)) %>%
  head(3)

CPS85 %>%
  ggplot(aes(x = age, y = wage)) + geom_point(aes(color = married)) + facet_wrap(~ sex)
  