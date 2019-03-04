function! Timer#start()
    let dict = {'count': input("時間を設定してね ")}
    function! dict.countdown(timer) abort
        let self.count -= 1
        if self.count
            echo self.count
        else
            echo 'Time up!!'
            call timer_stop(a:timer)
        endif
    endfunction
    let timer = timer_start(1000, dict.countdown, {'repeat': -1})
endfunction
