contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function withdraw() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function _fallback() payable {
    if stor0 <= 0:
        revert with 0, '__b'
    mem[228 len 128] = withdrawETH(address arg1, uint256 arg2, address arg3), 0x70bbe4a294878a14cb3cdd93, 238313827, stor0, address(this.address), mem[228 len 28]
    call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 96]
}

function sub_4b007dbb(?) payable {
    emit Enter()
    mem[228 len 128] = depositETH(address arg1, address arg2, uint16 arg3), 0x70bbe4a294878a14cb3cdd93, 0, address(this.address), 0, mem[228 len 28]
    mem[328] = 0
    call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[228 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[232 len 96]
    if not ext_call.success:
        revert with 0, 'Not success deposit'
    if not return_data.size:
        mem[260] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
        idx = 0
        s = 260
        t = 424
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[456 len 160] = 0, address(this.address), 64, 1, mem[424 len 60]
        mem[588] = 0
        call 0x2d867ae30400fffad9bed8472c514c2d6b827f5f.mem[456 len 4] with:
             gas gas_remaining wei
            args mem[460 len 128]
        if not ext_call.success:
            revert with 0, 'Not success claim'
        if not return_data.size:
            mem[556 len 96] = 0, 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1, mem[556 len 28]
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.mem[556 len 4] with:
                 gas gas_remaining wei
                args mem[560 len 64]
            if not ext_call.success:
                revert with 0, 'Not success approve'
            require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            stor0 = ext_call.return_data[0]
            if not return_data.size:
                mem[ceil32(return_data.size) + 688 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[ceil32(return_data.size) + 688 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[ceil32(return_data.size) + 688 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 692 len 96]
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 693 len 96]
        else:
            mem[ceil32(return_data.size) + 557 len 96] = 0, 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1, mem[ceil32(return_data.size) + 557 len 28]
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.mem[ceil32(return_data.size) + 557 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 561 len 64]
            if not ext_call.success:
                revert with 0, 'Not success approve'
            require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            stor0 = ext_call.return_data[0]
            if not return_data.size:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 693 len 96]
            else:
                mem[(4 * ceil32(return_data.size)) + 690 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[(4 * ceil32(return_data.size)) + 690 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[(4 * ceil32(return_data.size)) + 690 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 694 len 96]
    else:
        mem[ceil32(return_data.size) + 261] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
        idx = 0
        s = ceil32(return_data.size) + 261
        t = ceil32(return_data.size) + 425
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 457 len 160] = 0, address(this.address), 64, 1, mem[ceil32(return_data.size) + 425 len 60]
        mem[ceil32(return_data.size) + 589] = 0
        call 0x2d867ae30400fffad9bed8472c514c2d6b827f5f.mem[ceil32(return_data.size) + 457 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 461 len 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Not success claim'
            mem[ceil32(return_data.size) + 557 len 96] = 0, 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1, mem[ceil32(return_data.size) + 557 len 28]
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.mem[ceil32(return_data.size) + 557 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 561 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Not success approve'
                require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor0 = ext_call.return_data[0]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[ceil32(return_data.size) + ceil32(return_data.size) + 689 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 693 len 96]
            else:
                if not ext_call.success:
                    revert with 0, 
                                'Not success approve',
                                mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor0 = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 690 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[(4 * ceil32(return_data.size)) + 690 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[(4 * ceil32(return_data.size)) + 690 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 694 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
        else:
            if not ext_call.success:
                revert with 0, 
                            'Not success claim',
                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(2 * ceil32(return_data.size)) + 558 len 96] = 0, 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33, -1, mem[(2 * ceil32(return_data.size)) + 558 len 28]
            call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.mem[(2 * ceil32(return_data.size)) + 558 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 562 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                'Not success approve',
                                mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor0 = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 690 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[(4 * ceil32(return_data.size)) + 690 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[(4 * ceil32(return_data.size)) + 690 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 694 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
            else:
                if not ext_call.success:
                    revert with 0, 'Not success approve'
                require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
                call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor0 = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 128] = 0, 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, stor0, address(this.address), mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 28]
                call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 695 len 96]
}



}
