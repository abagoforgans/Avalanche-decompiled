contract main {




// =====================  Runtime code  =====================


address zeusAddress;
address owner;
mapping of uint8 stor2;
array of address stor3;

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function Zeus() {
    return zeusAddress
}

function owner() {
    return owner
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    owner = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    stor2[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    stor2[address(arg1)] = 0
}

function withdrawNative() {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0fe4c65(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x22cd3cbc00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor3[idx])
        call stor3[idx].swapIn() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_1a2e5104(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0xc73679aa00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor3[idx])
        call stor3[idx].swapOut() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7f79bce5(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x50f6438d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor3[idx])
        call stor3[idx].0x50f6438d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_942ac099(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x50431ce400000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor3[idx])
        call stor3[idx].0x50431ce4 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ea61af2e(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x5455797300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor3[idx])
        call stor3[idx].cashoutAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_40cd8623(?) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x9bd7196e00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor3[idx])
        call stor3[idx].0x9bd7196e with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b74e3d37(?) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0xebf75adb00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor3[idx])
        call stor3[idx].0xebf75adb with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_50f6438d(?) {
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    staticcall zeusAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call zeusAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3d08f7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x7048027500000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0x70480275 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_66e6b88b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x1785f53c00000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0x1785f53c with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7c73caab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0xc79add2f00000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0xc79add2f with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_83e5a92b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x13af403500000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0x13af4035 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a3aa766f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0xdf5f6eff00000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0xdf5f6eff with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e1233c6c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x8947606900000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0x89476069 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fbdadbf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x7048027500000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        require ext_code.size(stor3[idx])
        call stor3[idx].0x70480275 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_87a0bbf5(?) {
    require calldata.size - 4 >= 96
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0x97bb924300000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        require ext_code.size(stor3[idx])
        call stor3[idx].0x97bb9243 with:
             gas gas_remaining wei
            args arg1, arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d3aed10f(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    create contract with 0 wei
                    code: code.data[6388 len 10646], address(arg1), arg2, Array(len=address(arg4), data=arg3.length, arg3[all], code.data[arg3.length + -ceil32(ceil32(arg3.length)) + 6419 len ceil32(arg3.length) - arg3.length])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    stor3.length++
    stor3[stor3.length] = address(create.new_address)
    return address(create.new_address)
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x7f79bce5(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x50431ce4(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not stor2[msg.sender]:
                    revert with 0, 'azcloner: fuck off bud'
                owner = address(arg1)
            else:
                if unknown_0x1785f53c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not stor2[msg.sender]:
                        revert with 0, 'azcloner: fuck off bud'
                    stor2[address(arg1)] = 0
                else:
                    if unknown_0x1a2e5104(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not stor2[msg.sender]:
                            revert with 0, 'azcloner: fuck off bud'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[128] = 0xc73679aa00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stor3[idx])
                            call stor3[idx].swapOut() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x24d7806c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor2[address(arg1)])
                        if unknown_0x3d08f7bb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if not stor2[msg.sender]:
                                revert with 0, 'azcloner: fuck off bud'
                            idx = 0
                            while idx < stor3.length:
                                mem[0] = 3
                                mem[128] = 0x7048027500000000000000000000000000000000000000000000000000000000
                                mem[132] = address(arg1)
                                require ext_code.size(stor3[idx])
                                call stor3[idx].0x70480275 with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if unknown_0x40cd8623(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if not stor2[msg.sender]:
                                    revert with 0, 'azcloner: fuck off bud'
                                idx = 0
                                while idx < stor3.length:
                                    mem[0] = 3
                                    mem[128] = 0x9bd7196e00000000000000000000000000000000000000000000000000000000
                                    mem[132] = arg1
                                    require ext_code.size(stor3[idx])
                                    call stor3[idx].0x9bd7196e with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
        else:
            if unknown_0x50431ce4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor2[msg.sender]:
                    revert with 0, 'azcloner: fuck off bud'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x50f6438d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor2[msg.sender]:
                        revert with 0, 'azcloner: fuck off bud'
                    staticcall zeusAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call zeusAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0x66e6b88b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not stor2[msg.sender]:
                            revert with 0, 'azcloner: fuck off bud'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[128] = 0x1785f53c00000000000000000000000000000000000000000000000000000000
                            mem[132] = address(arg1)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].0x1785f53c with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x6aec847e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return zeusAddress
                        if unknown_0x70480275(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if not stor2[msg.sender]:
                                revert with 0, 'azcloner: fuck off bud'
                            stor2[address(arg1)] = 1
                        else:
                            if unknown_0x7c73caab(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if not stor2[msg.sender]:
                                    revert with 0, 'azcloner: fuck off bud'
                                idx = 0
                                while idx < stor3.length:
                                    mem[0] = 3
                                    mem[128] = 0xc79add2f00000000000000000000000000000000000000000000000000000000
                                    mem[132] = address(arg1)
                                    require ext_code.size(stor3[idx])
                                    call stor3[idx].0xc79add2f with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
    if unknown_0xa3aa766f(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x7f79bce5(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if not stor2[msg.sender]:
                revert with 0, 'azcloner: fuck off bud'
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[128] = 0x50f6438d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor3[idx])
                call stor3[idx].0x50f6438d with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0x83e5a92b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not stor2[msg.sender]:
                    revert with 0, 'azcloner: fuck off bud'
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    mem[128] = 0x13af403500000000000000000000000000000000000000000000000000000000
                    mem[132] = address(arg1)
                    require ext_code.size(stor3[idx])
                    call stor3[idx].0x13af4035 with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x87a0bbf5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    if not stor2[msg.sender]:
                        revert with 0, 'azcloner: fuck off bud'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[128] = 0x97bb924300000000000000000000000000000000000000000000000000000000
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(stor3[idx])
                        call stor3[idx].0x97bb9243 with:
                             gas gas_remaining wei
                            args arg1, arg2, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0x942ac099(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if not stor2[msg.sender]:
                                revert with 0, 'azcloner: fuck off bud'
                            idx = 0
                            while idx < stor3.length:
                                mem[0] = 3
                                mem[128] = 0x50431ce400000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor3[idx])
                                call stor3[idx].0x50431ce4 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not stor2[msg.sender]:
                            revert with 0, 'azcloner: fuck off bud'
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if unknown_0xe0fe4c65(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xe0fe4c65(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if not stor2[msg.sender]:
                revert with 0, 'azcloner: fuck off bud'
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[128] = 0x22cd3cbc00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor3[idx])
                call stor3[idx].swapIn() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0xe1233c6c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not stor2[msg.sender]:
                    revert with 0, 'azcloner: fuck off bud'
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    mem[128] = 0x8947606900000000000000000000000000000000000000000000000000000000
                    mem[132] = address(arg1)
                    require ext_code.size(stor3[idx])
                    call stor3[idx].0x89476069 with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0xea61af2e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor2[msg.sender]:
                        revert with 0, 'azcloner: fuck off bud'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[128] = 0x5455797300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor3[idx])
                        call stor3[idx].cashoutAll() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0xfbdadbf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not stor2[msg.sender]:
                            revert with 0, 'azcloner: fuck off bud'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[128] = 0x7048027500000000000000000000000000000000000000000000000000000000
                            mem[132] = address(arg1)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].0x70480275 with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    if unknown_0xa3aa766f(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if not stor2[msg.sender]:
            revert with 0, 'azcloner: fuck off bud'
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[128] = 0xdf5f6eff00000000000000000000000000000000000000000000000000000000
            mem[132] = address(arg1)
            require ext_code.size(stor3[idx])
            call stor3[idx].0xdf5f6eff with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if unknown_0xb74e3d37(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        if not stor2[msg.sender]:
            revert with 0, 'azcloner: fuck off bud'
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[128] = 0xebf75adb00000000000000000000000000000000000000000000000000000000
            mem[132] = arg1
            require ext_code.size(stor3[idx])
            call stor3[idx].0xebf75adb with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if uint32(call.func_hash) >> 224 != unknown_0xd3aed10f(?????):
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    if not stor2[msg.sender]:
        revert with 0, 'azcloner: fuck off bud'
    create contract with 0 wei
                    code: code.data[6388 len 10646], address(arg1), arg2, Array(len=address(arg4), data=arg3.length, arg3[all], code.data[arg3.length + -ceil32(ceil32(arg3.length)) + 6419 len ceil32(arg3.length) - arg3.length])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    stor3.length++
    stor3[stor3.length] = address(create.new_address)
    return address(create.new_address)
}



}
