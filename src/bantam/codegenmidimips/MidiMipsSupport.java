/*
 * File: MidiMipsSupport.java
 * Author: Tiffany Lam, Jenny Lin
 * Course: CS461
 * Project: 6
 * Date: May 10, 2017
 */

package bantam.codegenmidimips;

import java.io.PrintStream;

/**
 * Mips assembly support for Midi
 * create an object from this class for use in generating Mips code
 */
public class MidiMipsSupport {
    /* Syscall constants - passed to genMidiSyscall() to perform a specific system call*/
    /**
     * MIDI out syscall
     */
    public final int SYSCALL_MIDI_OUT = 1;
    /**
     * sleep syscall
     */
    public final int SYSCALL_SLEEP = 2;
    /**
     * MIDI out synchronous syscall
     */
    public final int SYSCALL_MIDI_OUT_SYNC = 3;

    /**
     * The print stream for printing to an assembly file
     */
    private PrintStream out;

    /**
     * Sets the MIDI out pitch
     *
     * @param pitch the pitch (0 - 127)
     */
    public void setMidiPitch(int pitch) {
        out.println("\tli $a0 " + pitch);
    }

    /**
     * Sets the MIDI out duration
     *
     * @param duration the duration in milliseconds
     */
    public void setMidiDuration(int duration) {
        out.println("\tli $a1 " + duration);
    }

    /**
     * Sets the MIDI out instrument
     *
     * @param instrument the instrument (0 - 127)
     */
    public void setMidiInstrument(int instrument) {
        out.println("\tli $a2 " + instrument);
    }

    /**
     * Sets the MIDI out volume
     *
     * @param volume the instrument (0 - 127)
     */
    public void setMidiVolume(int volume) {
        out.println("\tli $a3 " + volume);
    }

    public void setSleep(int sleep) {
        out.println("\tli $a0 " + sleep);
    }

    /**
     * Generate a system call
     *
     * @param syscallId the system call number
     */
    public void genMidiSyscall(int syscallId) {
        // syscall number is passed via $v0 (for spim)
        if (syscallId == SYSCALL_MIDI_OUT) {
            out.println("\tli $v0 31");
        }
        else if (syscallId == SYSCALL_SLEEP) {
            out.println("\tli $v0 32");
        }
        else if (syscallId == SYSCALL_MIDI_OUT_SYNC) {
            out.println("\tli $v0 33");
        }
        else {
            throw new RuntimeException("bad midi syscall identifier");
        }
        out.println("\tsyscall");
    }
}
