
def solution(s)
  n = s.length
  a= s.split("")
  flag=0
  for i in 0...(n/2)
      if(a[i]!='?' && a[n-1-i]!='?' && a[i]!=a[n-1-i])
            flag=1
        break;
      end
  end
   if flag == 1
     return 'No'
   else
     for i in 0...n
       if(a[i]=='?')
         if(a[n-1-i]=='?')
                 a[i]='a'
                 a[n-1-i]='a'
               else

                 a[i]=a[n-1-i]
               end
         end

     end
     end
     return a.join()
end
p solution('?ab??a')