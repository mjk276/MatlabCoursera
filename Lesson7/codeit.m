function [txt] = codeit(txt)
  for k = 1:length(txt)
      tmp = txt(k);
      if tmp>= 'a' && tmp <= 'z'
           txt(k) = char('a'+'z'-tmp);
      elseif tmp>= 'A' && tmp <= 'Z'
          txt(k) = char('A'+'Z'-tmp);
      end
  end
end