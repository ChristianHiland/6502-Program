# Moving the ASM file.
cp /workspace/6502-Program/Program/ASM_Files/Main.asm /workspace/6502-Program/assembler/vasm/
# Compiling
cd /workspace/6502-Program/assembler/vasm/ && ./vasm6502_oldstyle -Fbin -dotdir Main.asm
# Moving the compiled file.
mv /workspace/6502-Program/assembler/vasm/a.out /workspace/6502-Program/Program/
rm Main.asm && cd /workspace/6502-Program/Program/
# Printing the hex out.
hexdump -C a.out