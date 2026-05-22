require 'tk'

root = TkRoot.new do
  title 'Calculatrice Ruby'
end

entry = TkEntry.new(root) do
  width 35
  pack
end

frame = TkFrame.new(root).pack

buttons = [
  ['7', '8', '9', '/'],
  ['4', '5', '6', '*'],
  ['1', '2', '3', '-'],
  ['0', '.', '=', '+']
]

buttons.each do |row|
  row_frame = TkFrame.new(frame).pack

  row.each do |char|
    TkButton.new(row_frame) do
      text char
      width 5
      command proc {
        if char == '='
          begin
            result = eval(entry.get)
            entry.delete(0, 'end')
            entry.insert(0, result)
          rescue
            entry.delete(0, 'end')
            entry.insert(0, 'Erreur')
          end
        else
          entry.insert('end', char)
        end
      }
      pack side: 'left'
    end
  end
end

Tk.mainloop
