.global _start

.section .data

temperatura:
    .quad 35

umidade:
    .quad 75

temp_limite:
    .quad 30

umid_limite:
    .quad 70

temp_alert:
    .quad 0

umid_alert:
    .quad 0

.section .text

_start:

    ldr x0, =temperatura
    ldr x1, [x0]

    ldr x2, =temp_limite
    ldr x3, [x2]

    cmp x1, x3

    ble temp_ok

    ldr x4, =temp_alert
    mov x5, #1
    str x5, [x4]

temp_ok:

    ldr x0, =umidade
    ldr x1, [x0]

    ldr x2, =umid_limite
    ldr x3, [x2]

    cmp x1, x3

    ble umid_ok

    ldr x4, =umid_alert
    mov x5, #1
    str x5, [x4]

umid_ok:

    mov x0, #0
    mov x8, #93
    svc #0
