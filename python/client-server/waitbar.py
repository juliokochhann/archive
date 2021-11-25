import sys
from time import sleep
from threading import Thread, Event

class WaitBar(Thread):
    '''
    WaitBar extends the Thread class for creating an animated loadind effect.
    '''
    def __init__ (self):
        '''
        Construct a new WaitBar object.
        '''
        Thread.__init__(self)
        self._stop_event = Event()

    def run(self):
        '''
        This method runs when the Thread starts.
        '''
        sticks = ['-', '\\', '|', '/']

        while not self._stop_event.is_set():
            for s in sticks:
                if self._stop_event.is_set():
                    break
                sys.stdout.write("\b{0}".format(s))
                sys.stdout.flush()
                sleep(.1)

        print ("\r{0}".format(' '))

    def stop(self):
        '''
        This method sets the stop flag for the Thread.
        '''
        self._stop_event.set()

    def stopped(self):
        '''
        If the Thread has stopped returns True otherwise False.

        :return: _stop_event.is_set()
        '''
        return self._stop_event.is_set()
