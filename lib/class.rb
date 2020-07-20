class Todo

  def initialize()
    @list = []
  end

  def alter(command)
    info = get_info(command)
    perform_task(info)
    format_list
  end

  private

  def perform_task(info)
    if info[:action] == 'add'
      add(info[:task])
    elsif info[:action] == 'done'
      remove(info[:task])
    end
  end

  def add(item)
    @list << item
  end

  def remove(index)
    arr_index = index.to_i - 1
    @list.delete_at(arr_index)
  end

  def get_info(command)
    command_array = command.split(" ")
    { action: command_array.shift(),
      task: command_array.join(' ') }
  end

  def format_list
    formatted_list = ''
    @list.each_with_index { |item, i|
      formatted_list += "#{i + 1} #{item}\n"
    }
    formatted_list
  end
end