contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
mapping of uint8 stor1;
uint256 sub_112132b3;
uint256 sub_6e4cf9ad;
mapping of struct sub_31dbc8bf;
array of struct stor5;
uint256 last_id;
mapping of uint8 stor7;

function sub_112132b3(?) {
    return sub_112132b3
}

function sub_2dfa6cb0(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_31dbc8bf(?) {
    require calldata.size - 4 >= 32
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'Not existant'
    return sub_31dbc8bf[arg1].field_520
}

function sub_6e4cf9ad(?) {
    return sub_6e4cf9ad
}

function last_id() {
    return last_id
}

function sub_5fb1850c(?) {
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Stop right there criminal scum!'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit 0x8c726618: msg.sender, msg.value
    else:
        if unknown_0x80eb0254(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xccbbd260(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x80eb0254(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_0:
                        if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if sub_31dbc8bf[cd[4]][5][cd[36]].field_0:
                            if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_31dbc8bf[cd[4]][5][cd[36]].field_0):
                                if 31 >= uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5:
                                    mem[160] = 256 * sub_31dbc8bf[cd[4]][5][cd[36]].field_8
                                else:
                                    mem[160] = sub_31dbc8bf[cd[4]][5][cd[36]].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_31dbc8bf[cd[4]][5][cd[36]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == sub_31dbc8bf[cd[4]][5][cd[36]].field_1 < 32:
                                revert with 0, 34
                            if sub_31dbc8bf[cd[4]][5][cd[36]].field_1:
                                if 31 >= sub_31dbc8bf[cd[4]][5][cd[36]].field_1:
                                    mem[160] = 256 * sub_31dbc8bf[cd[4]][5][cd[36]].field_8
                                else:
                                    mem[160] = sub_31dbc8bf[cd[4]][5][cd[36]].field_0
                                    idx = 160
                                    s = 0
                                    while sub_31dbc8bf[cd[4]][5][cd[36]].field_1 + 128 > idx:
                                        mem[idx + 32] = sub_31dbc8bf[cd[4]][5][cd[36]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return Array(len=2 * Mask(256, -1, sub_31dbc8bf[cd[4]][5][cd[36]].field_0), data=mem[160 len ceil32(uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5)]), 
                               sub_31dbc8bf[cd[4]][5][cd[36]].field_256,
                               sub_31dbc8bf[cd[4]][5][cd[36]].field_768,
                               sub_31dbc8bf[cd[4]][5][cd[36]].field_1024,
                               sub_31dbc8bf[cd[4]][5][cd[36]].field_1280,
                               sub_31dbc8bf[cd[4]][5][cd[36]].field_1536,
                               bool(sub_31dbc8bf[cd[4]][5][cd[36]].field_1800),
                               bool(sub_31dbc8bf[cd[4]][5][cd[36]].field_1808)
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == sub_31dbc8bf[cd[4]][5][cd[36]].field_1 < 32:
                        revert with 0, 34
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_0:
                        if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_31dbc8bf[cd[4]][5][cd[36]].field_0):
                            if 31 >= uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]][5][cd[36]].field_8
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][5][cd[36]].field_0
                                idx = 160
                                s = 0
                                while (uint255(sub_31dbc8bf[cd[4]][5][cd[36]].field_0) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][5][cd[36]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if sub_31dbc8bf[cd[4]][5][cd[36]].field_0 == sub_31dbc8bf[cd[4]][5][cd[36]].field_1 < 32:
                            revert with 0, 34
                        if sub_31dbc8bf[cd[4]][5][cd[36]].field_1:
                            if 31 >= sub_31dbc8bf[cd[4]][5][cd[36]].field_1:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]][5][cd[36]].field_8
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][5][cd[36]].field_0
                                idx = 160
                                s = 0
                                while sub_31dbc8bf[cd[4]][5][cd[36]].field_1 + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][5][cd[36]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return Array(len=sub_31dbc8bf[cd[4]][5][cd[36]].field_0, data=mem[160 len ceil32(sub_31dbc8bf[cd[4]][5][cd[36]].field_1)]), 
                           sub_31dbc8bf[cd[4]][5][cd[36]].field_256,
                           sub_31dbc8bf[cd[4]][5][cd[36]].field_768,
                           sub_31dbc8bf[cd[4]][5][cd[36]].field_1024,
                           sub_31dbc8bf[cd[4]][5][cd[36]].field_1280,
                           sub_31dbc8bf[cd[4]][5][cd[36]].field_1536,
                           bool(sub_31dbc8bf[cd[4]][5][cd[36]].field_1800),
                           bool(sub_31dbc8bf[cd[4]][5][cd[36]].field_1808)
                if unknown_0x91d2ec96(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if uint8(stor0.field_0):
                        revert with 0, 'Reentrancy!'
                    uint8(stor0.field_0) = 1
                    if not sub_31dbc8bf[cd[4]].field_512:
                        revert with 0, 'The DAO does not exist'
                    require msg.sender == sub_31dbc8bf[cd[4]].field_520
                    sub_31dbc8bf[cd[4]].field_0 = 0
                    if sub_31dbc8bf[cd[4]].field_256:
                        if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        sub_31dbc8bf[cd[4]].field_256 = 0
                        if 31 < uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5:
                            idx = 0
                            while (uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                sub_31dbc8bf[cd[4]][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                            revert with 0, 34
                        sub_31dbc8bf[cd[4]].field_256 = 0
                        if 31 < sub_31dbc8bf[cd[4]].field_257:
                            idx = 0
                            while sub_31dbc8bf[cd[4]].field_257 + 31 / 32 > idx:
                                sub_31dbc8bf[cd[4]][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                    sub_31dbc8bf[cd[4]].field_512 = 0
                    sub_31dbc8bf[cd[4]].field_1536 = 0
                    sub_31dbc8bf[cd[4]].field_1792 = 0
                    sub_31dbc8bf[cd[4]].field_2048 = 0
                    uint8(stor0.field_0) = 0
                if unknown_0x94e8d284(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return last_id
                if uint32(call.func_hash) >> 224 != unknown_0xae6865dd(?????):
                    require unknown_0xae97ef20(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if address(stor0.field_8) != msg.sender:
                        revert with 0, 'Stop right there criminal scum!'
                    stor1[address(cd[4])] = uint8(bool(cd[36]))
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[68] == bool(cd[68])
                if uint8(stor0.field_0):
                    revert with 0, 'Reentrancy!'
                uint8(stor0.field_0) = 1
                if not sub_31dbc8bf[cd[4]].field_512:
                    revert with 0, 'The DAO does not exist'
                if not sub_31dbc8bf[cd[4]][5][cd[36]].field_1792:
                    revert with 0, 'The DAO voting does not exist'
                if sub_31dbc8bf[cd[4]][5][cd[36]].field_1800:
                    revert with 0, 'The DAO voting is closed'
                if block.number < sub_31dbc8bf[cd[4]][5][cd[36]].field_1280:
                    revert with 0, 'The DAO voting isn't started'
                if block.number >= sub_31dbc8bf[cd[4]][5][cd[36]].field_1536:
                    revert with 0, 'The DAO voting is finished'
                if sub_31dbc8bf[cd[4]][5][cd[36]][8][msg.sender].field_0:
                    revert with 0, 'You already voted'
                if not sub_31dbc8bf[cd[4]].field_512:
                    revert with 0, 'The DAO does not exist'
                require ext_code.size(sub_31dbc8bf[cd[4]].field_0)
                staticcall sub_31dbc8bf[cd[4]].field_0.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_31dbc8bf[cd[4]].field_0)
                staticcall sub_31dbc8bf[cd[4]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not cd[68]:
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_1024 > !(1000 * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_31dbc8bf[cd[4]][5][cd[36]].field_1024 += 1000 * ext_call.return_data[0] / ext_call.return_data[0]
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_1024 >= sub_31dbc8bf[cd[4]].field_1793:
                        sub_31dbc8bf[cd[4]][5][cd[36]].field_1800 = 1
                        sub_31dbc8bf[cd[4]][5][cd[36]].field_1808 = 0
                else:
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_768 > !(1000 * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_31dbc8bf[cd[4]][5][cd[36]].field_768 += 1000 * ext_call.return_data[0] / ext_call.return_data[0]
                    if sub_31dbc8bf[cd[4]][5][cd[36]].field_1024 >= sub_31dbc8bf[cd[4]].field_1793:
                        sub_31dbc8bf[cd[4]][5][cd[36]].field_1800 = 1
                        sub_31dbc8bf[cd[4]][5][cd[36]].field_1808 = 1
                sub_31dbc8bf[cd[4]][5][cd[36]][8][msg.sender].field_0 = 1
                uint8(stor0.field_0) = 0
                return bool(sub_31dbc8bf[cd[4]][5][cd[36]].field_1800)
            if unknown_0xccbbd260(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if sub_31dbc8bf[cd[4]].field_256:
                    if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_31dbc8bf[cd[4]].field_256:
                        if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_31dbc8bf[cd[4]].field_256):
                            if 31 >= uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                                idx = 160
                                s = 0
                                while (uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                            revert with 0, 34
                        if sub_31dbc8bf[cd[4]].field_257:
                            if 31 >= sub_31dbc8bf[cd[4]].field_257:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                                idx = 160
                                s = 0
                                while sub_31dbc8bf[cd[4]].field_257 + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return sub_31dbc8bf[cd[4]].field_0, 
                           Array(len=2 * Mask(256, -1, sub_31dbc8bf[cd[4]].field_256), data=mem[160 len ceil32(uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5)]),
                           bool(sub_31dbc8bf[cd[4]].field_512),
                           sub_31dbc8bf[cd[4]].field_512,
                           sub_31dbc8bf[cd[4]].field_1536,
                           sub_31dbc8bf[cd[4]].field_1792,
                           sub_31dbc8bf[cd[4]].field_2048
                if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                    revert with 0, 34
                if sub_31dbc8bf[cd[4]].field_256:
                    if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_31dbc8bf[cd[4]].field_256):
                        if 31 >= uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5:
                            mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                        else:
                            mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                            idx = 160
                            s = 0
                            while (uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if sub_31dbc8bf[cd[4]].field_257:
                        if 31 >= sub_31dbc8bf[cd[4]].field_257:
                            mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                        else:
                            mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                            idx = 160
                            s = 0
                            while sub_31dbc8bf[cd[4]].field_257 + 128 > idx:
                                mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                return sub_31dbc8bf[cd[4]].field_0, 
                       Array(len=sub_31dbc8bf[cd[4]].field_256, data=mem[160 len ceil32(sub_31dbc8bf[cd[4]].field_257)]),
                       bool(sub_31dbc8bf[cd[4]].field_512),
                       sub_31dbc8bf[cd[4]].field_512,
                       sub_31dbc8bf[cd[4]].field_1536,
                       sub_31dbc8bf[cd[4]].field_1792,
                       sub_31dbc8bf[cd[4]].field_2048
            if unknown_0xd541418d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[36] == address(cd[36])
                require cd[68] == bool(cd[68])
                if not sub_31dbc8bf[cd[4]].field_512:
                    revert with 0, 'DAO does not exist'
                if sub_31dbc8bf[cd[4]].field_520 != msg.sender:
                    if not sub_31dbc8bf[cd[4]][3][msg.sender].field_0:
                        revert with 0, 'Unauthorized'
                sub_31dbc8bf[cd[4]][3][address(cd[36])].field_0 = uint8(bool(cd[68]))
            else:
                if unknown_0xdd05db80(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor5[address(cd[4])].field_0:
                        mem[160] = stor5[address(cd[4])].field_0
                        idx = 160
                        s = 0
                        while (32 * stor5[address(cd[4])].field_0) + 128 > idx:
                            mem[idx + 32] = stor5[address(cd[4])][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5[address(cd[4])].field_0, data=mem[160 len 32 * stor5[address(cd[4])].field_0])
                    mem[(32 * stor5[address(cd[4])].field_0) + 160] = 32
                    mem[(32 * stor5[address(cd[4])].field_0) + 192] = stor5[address(cd[4])].field_0
                    mem[(32 * stor5[address(cd[4])].field_0) + 224 len 32 * stor5[address(cd[4])].field_0] = mem[160 len 32 * stor5[address(cd[4])].field_0]
                    return memory
                      from (32 * stor5[address(cd[4])].field_0) + 160
                       len (96 * stor5[address(cd[4])].field_0) + 64
                if unknown_0xef12e860(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[36] == address(cd[36])
                    require cd[68] == bool(cd[68])
                    if not sub_31dbc8bf[cd[4]].field_512:
                        revert with 0, 'DAO does not exist'
                    if sub_31dbc8bf[cd[4]].field_520 != msg.sender:
                        if not sub_31dbc8bf[cd[4]][3][msg.sender].field_0:
                            if not sub_31dbc8bf[cd[4]][4][msg.sender].field_0:
                                revert with 0, 'Unauthorized'
                    sub_31dbc8bf[cd[4]][4][address(cd[36])].field_0 = uint8(bool(cd[68]))
                else:
                    if unknown_0xf00c119d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if address(stor0.field_8) != msg.sender:
                            revert with 0, 'Stop right there criminal scum!'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0xffe410b8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                            revert with 0, 65
                        require cd[4] + ('cd', 4).length + 36 <= calldata.size
                        if uint8(stor0.field_0):
                            revert with 0, 'Reentrancy!'
                        uint8(stor0.field_0) = 1
                        if not sub_31dbc8bf[cd[36]].field_512:
                            revert with 0, 'The DAO does not exist'
                        if not sub_31dbc8bf[cd[36]].field_512:
                            revert with 0, 'The DAO does not exist'
                        require ext_code.size(sub_31dbc8bf[cd[36]].field_0)
                        staticcall sub_31dbc8bf[cd[36]].field_0.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_31dbc8bf[cd[36]].field_0)
                        staticcall sub_31dbc8bf[cd[36]].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] < sub_31dbc8bf[cd[36]].field_2048:
                            revert with 0, 'Unauthorized'
                        if sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0:
                            if sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0 == uint255(sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if ('cd', 4).length:
                                sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                            else:
                                sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0 = 0
                                idx = 0
                                while (uint255(sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0) * 0.5) + 31 / 32 > idx:
                                    sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0 == sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_1 < 32:
                                revert with 0, 34
                            if ('cd', 4).length:
                                sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                            else:
                                sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_0 = 0
                                idx = 0
                                while sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_1 + 31 / 32 > idx:
                                    sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_1280 = cd[68]
                        sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_1536 = cd[100]
                        sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_512 = sub_31dbc8bf[cd[36]].field_1536
                        sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_256 = msg.sender or Mask(96, 160, sub_31dbc8bf[cd[36]][5][sub_31dbc8bf[cd[36]].field_1536].field_256)
                        if sub_31dbc8bf[cd[36]].field_1536 == -1:
                            revert with 0, 17
                        sub_31dbc8bf[cd[36]].field_1536++
                        uint8(stor0.field_0) = 0
        else:
            if unknown_0x31dbc8bf(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x31dbc8bf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not sub_31dbc8bf[cd[4]].field_512:
                        revert with 0, 'Not existant'
                    return sub_31dbc8bf[cd[4]].field_520
                if uint32(call.func_hash) >> 224 != unknown_0x4d3d0382(?????):
                    if unknown_0x5fb1850c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if address(stor0.field_8) != msg.sender:
                            revert with 0, 'Stop right there criminal scum!'
                        selfdestruct(msg.sender)
                    if unknown_0x6e4cf9ad(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_6e4cf9ad
                    require unknown_0x73a86c8d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if not sub_31dbc8bf[cd[4]].field_512:
                        revert with 0, 'DAO does not exist'
                    if sub_31dbc8bf[cd[4]].field_520 != msg.sender:
                        if not sub_31dbc8bf[cd[4]][3][msg.sender].field_0:
                            if not sub_31dbc8bf[cd[4]][4][msg.sender].field_0:
                                revert with 0, 'Unauthorized'
                    sub_31dbc8bf[cd[4]].field_2048 = cd[36]
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if not sub_31dbc8bf[cd[4]].field_512:
                    revert with 0, 'The DAO does not exist'
                require ext_code.size(sub_31dbc8bf[cd[4]].field_0)
                staticcall sub_31dbc8bf[cd[4]].field_0.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_31dbc8bf[cd[4]].field_0)
                staticcall sub_31dbc8bf[cd[4]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (1000 * ext_call.return_data[0] / ext_call.return_data[0])
            if unknown_0x112132b3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_112132b3
            if unknown_0x1672100f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if sub_31dbc8bf[cd[4]].field_256:
                    if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if sub_31dbc8bf[cd[4]].field_256:
                        if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_31dbc8bf[cd[4]].field_256):
                            if 31 >= uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                                idx = 160
                                s = 0
                                while (uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                            revert with 0, 34
                        if sub_31dbc8bf[cd[4]].field_257:
                            if 31 >= sub_31dbc8bf[cd[4]].field_257:
                                mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                            else:
                                mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                                idx = 160
                                s = 0
                                while sub_31dbc8bf[cd[4]].field_257 + 128 > idx:
                                    mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return sub_31dbc8bf[cd[4]].field_0, 
                           Array(len=2 * Mask(256, -1, sub_31dbc8bf[cd[4]].field_256), data=mem[160 len ceil32(uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5)]),
                           bool(sub_31dbc8bf[cd[4]].field_512),
                           sub_31dbc8bf[cd[4]].field_512,
                           sub_31dbc8bf[cd[4]].field_1536,
                           sub_31dbc8bf[cd[4]].field_1792,
                           sub_31dbc8bf[cd[4]].field_2048
                if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                    revert with 0, 34
                if sub_31dbc8bf[cd[4]].field_256:
                    if sub_31dbc8bf[cd[4]].field_256 == uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_31dbc8bf[cd[4]].field_256):
                        if 31 >= uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5:
                            mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                        else:
                            mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                            idx = 160
                            s = 0
                            while (uint255(sub_31dbc8bf[cd[4]].field_256) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if sub_31dbc8bf[cd[4]].field_256 == sub_31dbc8bf[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if sub_31dbc8bf[cd[4]].field_257:
                        if 31 >= sub_31dbc8bf[cd[4]].field_257:
                            mem[160] = 256 * sub_31dbc8bf[cd[4]].field_264
                        else:
                            mem[160] = sub_31dbc8bf[cd[4]][1].field_0
                            idx = 160
                            s = 0
                            while sub_31dbc8bf[cd[4]].field_257 + 128 > idx:
                                mem[idx + 32] = sub_31dbc8bf[cd[4]][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                return sub_31dbc8bf[cd[4]].field_0, 
                       Array(len=sub_31dbc8bf[cd[4]].field_256, data=mem[160 len ceil32(sub_31dbc8bf[cd[4]].field_257)]),
                       bool(sub_31dbc8bf[cd[4]].field_512),
                       sub_31dbc8bf[cd[4]].field_512,
                       sub_31dbc8bf[cd[4]].field_1536,
                       sub_31dbc8bf[cd[4]].field_1792,
                       sub_31dbc8bf[cd[4]].field_2048
            if uint32(call.func_hash) >> 224 != unknown_0x19207401(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x28bf794d(?????):
                    require unknown_0x2dfa6cb0(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return bool(stor7[cd[4]])
                require not msg.value
                require calldata.size - 4 >= 32
                if address(stor0.field_8) != msg.sender:
                    revert with 0, 'Stop right there criminal scum!'
                if cd[4] and sub_112132b3 > -1 / cd[4]:
                    revert with 0, 17
                sub_6e4cf9ad = cd[4] * sub_112132b3
            else:
                require calldata.size - 4 >= 160
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                mem[('cd', 4).length + 160] = 0
                require cd[36] == address(cd[36])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 68).length) + 130 < 129 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(('cd', 4).length)) + 129] = ('cd', 68).length
                require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
                s = cd[68] + 36
                t = ceil32(ceil32(('cd', 4).length)) + 161
                idx = 0
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 100).length) + 131 < 130 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 131 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130] = ('cd', 100).length
                require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
                s = cd[100] + 36
                t = ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 162
                idx = 0
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if uint8(stor0.field_0):
                    revert with 0, 'Reentrancy!'
                uint8(stor0.field_0) = 1
                if not stor1[msg.sender]:
                    if sub_6e4cf9ad != msg.value:
                        revert with 0, 'Wrong price, you tried!'
                    sub_31dbc8bf[stor6].field_512 = 1
                    if sub_31dbc8bf[stor6].field_256:
                        if sub_31dbc8bf[stor6].field_256 == uint255(sub_31dbc8bf[stor6].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if ('cd', 4).length:
                            sub_31dbc8bf[stor6][1][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                        else:
                            sub_31dbc8bf[stor6].field_256 = 0
                            idx = 0
                            while (uint255(sub_31dbc8bf[stor6].field_256) * 0.5) + 31 / 32 > idx:
                                sub_31dbc8bf[stor6][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if sub_31dbc8bf[stor6].field_256 == sub_31dbc8bf[stor6].field_257 < 32:
                            revert with 0, 34
                        if ('cd', 4).length:
                            sub_31dbc8bf[stor6][1][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                        else:
                            sub_31dbc8bf[stor6].field_256 = 0
                            idx = 0
                            while sub_31dbc8bf[stor6].field_257 + 31 / 32 > idx:
                                sub_31dbc8bf[stor6][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                    sub_31dbc8bf[stor6].field_520 = msg.sender
                    sub_31dbc8bf[stor6].field_0 = address(cd[36])
                    idx = 0
                    while idx < ('cd', 68).length:
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 173 len 20]
                        mem[32] = sha3(last_id, 4) + 3
                        sub_31dbc8bf[stor6][3][mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 173 len 20]].field_0 = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < ('cd', 68).length:
                        if idx >= ('cd', 100).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 174 len 20]
                        mem[32] = sha3(last_id, 4) + 4
                        sub_31dbc8bf[stor6][4][mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 174 len 20]].field_0 = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_31dbc8bf[stor6].field_2048 = cd[132]
                    stor5[msg.sender].field_0++
                    stor5[msg.sender][stor5[msg.sender].field_0].field_0 = last_id
                    if last_id == -1:
                        revert with 0, 17
                    last_id++
                    if last_id < 1:
                        revert with 0, 17
                uint8(stor0.field_0) = 0
}

function sub_ae97ef20(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Stop right there criminal scum!'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function set_price(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Stop right there criminal scum!'
    if arg1 and sub_112132b3 > -1 / arg1:
        revert with 0, 17
    sub_6e4cf9ad = arg1 * sub_112132b3
}

function sub_f00c119d(?) {
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'Stop right there criminal scum!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_73a86c8d(?) {
    require calldata.size - 4 >= 64
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'DAO does not exist'
    if sub_31dbc8bf[arg1].field_520 != msg.sender:
        if not sub_31dbc8bf[arg1][3][msg.sender].field_0:
            if not sub_31dbc8bf[arg1][4][msg.sender].field_0:
                revert with 0, 'Unauthorized'
    sub_31dbc8bf[arg1].field_2048 = arg2
}

function sub_d541418d(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'DAO does not exist'
    if sub_31dbc8bf[arg1].field_520 != msg.sender:
        if not sub_31dbc8bf[arg1][3][msg.sender].field_0:
            revert with 0, 'Unauthorized'
    sub_31dbc8bf[arg1][3][address(arg2)].field_0 = uint8(bool(arg3))
}

function sub_ef12e860(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'DAO does not exist'
    if sub_31dbc8bf[arg1].field_520 != msg.sender:
        if not sub_31dbc8bf[arg1][3][msg.sender].field_0:
            if not sub_31dbc8bf[arg1][4][msg.sender].field_0:
                revert with 0, 'Unauthorized'
    sub_31dbc8bf[arg1][4][address(arg2)].field_0 = uint8(bool(arg3))
}

function sub_dd05db80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5[address(arg1)].field_0:
        mem[128] = stor5[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor5[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor5[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor5[address(arg1)].field_0, data=mem[128 len 32 * stor5[address(arg1)].field_0])
    mem[(32 * stor5[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor5[address(arg1)].field_0) + 160] = stor5[address(arg1)].field_0
    mem[(32 * stor5[address(arg1)].field_0) + 192 len 32 * stor5[address(arg1)].field_0] = mem[128 len 32 * stor5[address(arg1)].field_0]
    return memory
      from (32 * stor5[address(arg1)].field_0) + 128
       len (96 * stor5[address(arg1)].field_0) + 64
}

function sub_4d3d0382(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'The DAO does not exist'
    require ext_code.size(sub_31dbc8bf[arg1].field_0)
    staticcall sub_31dbc8bf[arg1].field_0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_31dbc8bf[arg1].field_0)
    staticcall sub_31dbc8bf[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (1000 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_91d2ec96(?) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_0):
        revert with 0, 'Reentrancy!'
    uint8(stor0.field_0) = 1
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'The DAO does not exist'
    require msg.sender == sub_31dbc8bf[arg1].field_520
    sub_31dbc8bf[arg1].field_0 = 0
    if sub_31dbc8bf[arg1].field_256:
        if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        sub_31dbc8bf[arg1].field_256 = 0
        if 31 < uint255(sub_31dbc8bf[arg1].field_256) * 0.5:
            idx = 0
            while (uint255(sub_31dbc8bf[arg1].field_256) * 0.5) + 31 / 32 > idx:
                sub_31dbc8bf[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
            revert with 0, 34
        sub_31dbc8bf[arg1].field_256 = 0
        if 31 < sub_31dbc8bf[arg1].field_257:
            idx = 0
            while sub_31dbc8bf[arg1].field_257 + 31 / 32 > idx:
                sub_31dbc8bf[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    sub_31dbc8bf[arg1].field_512 = 0
    sub_31dbc8bf[arg1].field_1536 = 0
    sub_31dbc8bf[arg1].field_1792 = 0
    sub_31dbc8bf[arg1].field_2048 = 0
    uint8(stor0.field_0) = 0
}

function sub_ae6865dd(?) {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if uint8(stor0.field_0):
        revert with 0, 'Reentrancy!'
    uint8(stor0.field_0) = 1
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'The DAO does not exist'
    if not sub_31dbc8bf[arg1][5][arg2].field_1792:
        revert with 0, 'The DAO voting does not exist'
    if sub_31dbc8bf[arg1][5][arg2].field_1800:
        revert with 0, 'The DAO voting is closed'
    if block.number < sub_31dbc8bf[arg1][5][arg2].field_1280:
        revert with 0, 'The DAO voting isn't started'
    if block.number >= sub_31dbc8bf[arg1][5][arg2].field_1536:
        revert with 0, 'The DAO voting is finished'
    if sub_31dbc8bf[arg1][5][arg2][8][msg.sender].field_0:
        revert with 0, 'You already voted'
    if not sub_31dbc8bf[arg1].field_512:
        revert with 0, 'The DAO does not exist'
    require ext_code.size(sub_31dbc8bf[arg1].field_0)
    staticcall sub_31dbc8bf[arg1].field_0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_31dbc8bf[arg1].field_0)
    staticcall sub_31dbc8bf[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not arg3:
        if sub_31dbc8bf[arg1][5][arg2].field_1024 > !(1000 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        sub_31dbc8bf[arg1][5][arg2].field_1024 += 1000 * ext_call.return_data[0] / ext_call.return_data[0]
        if sub_31dbc8bf[arg1][5][arg2].field_1024 >= sub_31dbc8bf[arg1].field_1793:
            sub_31dbc8bf[arg1][5][arg2].field_1800 = 1
            sub_31dbc8bf[arg1][5][arg2].field_1808 = 0
    else:
        if sub_31dbc8bf[arg1][5][arg2].field_768 > !(1000 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        sub_31dbc8bf[arg1][5][arg2].field_768 += 1000 * ext_call.return_data[0] / ext_call.return_data[0]
        if sub_31dbc8bf[arg1][5][arg2].field_1024 >= sub_31dbc8bf[arg1].field_1793:
            sub_31dbc8bf[arg1][5][arg2].field_1800 = 1
            sub_31dbc8bf[arg1][5][arg2].field_1808 = 1
    sub_31dbc8bf[arg1][5][arg2][8][msg.sender].field_0 = 1
    uint8(stor0.field_0) = 0
    return bool(sub_31dbc8bf[arg1][5][arg2].field_1800)
}

function sub_ffe410b8(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(stor0.field_0):
        revert with 0, 'Reentrancy!'
    uint8(stor0.field_0) = 1
    if not sub_31dbc8bf[arg2].field_512:
        revert with 0, 'The DAO does not exist'
    if not sub_31dbc8bf[arg2].field_512:
        revert with 0, 'The DAO does not exist'
    require ext_code.size(sub_31dbc8bf[arg2].field_0)
    staticcall sub_31dbc8bf[arg2].field_0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_31dbc8bf[arg2].field_0)
    staticcall sub_31dbc8bf[arg2].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] < sub_31dbc8bf[arg2].field_2048:
        revert with 0, 'Unauthorized'
    if sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0:
        if sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0 == uint255(sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0 = 0
            idx = 0
            while (uint255(sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0) * 0.5) + 31 / 32 > idx:
                sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0 == sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_0 = 0
            idx = 0
            while sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_1 + 31 / 32 > idx:
                sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536][idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_1280 = arg3
    sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_1536 = arg4
    sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_512 = sub_31dbc8bf[arg2].field_1536
    sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_256 = msg.sender or Mask(96, 160, sub_31dbc8bf[arg2][5][sub_31dbc8bf[arg2].field_1536].field_256)
    if sub_31dbc8bf[arg2].field_1536 == -1:
        revert with 0, 17
    sub_31dbc8bf[arg2].field_1536++
    uint8(stor0.field_0) = 0
}

function sub_1672100f(?) {
    require calldata.size - 4 >= 32
    if sub_31dbc8bf[arg1].field_256:
        if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1].field_256:
            if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_31dbc8bf[arg1].field_256):
                if 31 >= uint255(sub_31dbc8bf[arg1].field_256) * 0.5:
                    mem[128] = 256 * sub_31dbc8bf[arg1].field_264
                else:
                    mem[128] = sub_31dbc8bf[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_31dbc8bf[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
                revert with 0, 34
            if sub_31dbc8bf[arg1].field_257:
                if 31 >= sub_31dbc8bf[arg1].field_257:
                    mem[128] = 256 * sub_31dbc8bf[arg1].field_264
                else:
                    mem[128] = sub_31dbc8bf[arg1][1].field_0
                    idx = 128
                    s = 0
                    while sub_31dbc8bf[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_31dbc8bf[arg1].field_0, 
               Array(len=2 * Mask(256, -1, sub_31dbc8bf[arg1].field_256), data=mem[128 len ceil32(uint255(sub_31dbc8bf[arg1].field_256) * 0.5)]),
               bool(sub_31dbc8bf[arg1].field_512),
               sub_31dbc8bf[arg1].field_512,
               sub_31dbc8bf[arg1].field_1536,
               sub_31dbc8bf[arg1].field_1792,
               sub_31dbc8bf[arg1].field_2048
    if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
        revert with 0, 34
    if sub_31dbc8bf[arg1].field_256:
        if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_31dbc8bf[arg1].field_256):
            if 31 >= uint255(sub_31dbc8bf[arg1].field_256) * 0.5:
                mem[128] = 256 * sub_31dbc8bf[arg1].field_264
            else:
                mem[128] = sub_31dbc8bf[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(sub_31dbc8bf[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1].field_257:
            if 31 >= sub_31dbc8bf[arg1].field_257:
                mem[128] = 256 * sub_31dbc8bf[arg1].field_264
            else:
                mem[128] = sub_31dbc8bf[arg1][1].field_0
                idx = 128
                s = 0
                while sub_31dbc8bf[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_31dbc8bf[arg1].field_0, 
           Array(len=sub_31dbc8bf[arg1].field_256, data=mem[128 len ceil32(sub_31dbc8bf[arg1].field_257)]),
           bool(sub_31dbc8bf[arg1].field_512),
           sub_31dbc8bf[arg1].field_512,
           sub_31dbc8bf[arg1].field_1536,
           sub_31dbc8bf[arg1].field_1792,
           sub_31dbc8bf[arg1].field_2048
}

function daos(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_31dbc8bf[arg1].field_256:
        if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1].field_256:
            if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_31dbc8bf[arg1].field_256):
                if 31 >= uint255(sub_31dbc8bf[arg1].field_256) * 0.5:
                    mem[128] = 256 * sub_31dbc8bf[arg1].field_264
                else:
                    mem[128] = sub_31dbc8bf[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_31dbc8bf[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
                revert with 0, 34
            if sub_31dbc8bf[arg1].field_257:
                if 31 >= sub_31dbc8bf[arg1].field_257:
                    mem[128] = 256 * sub_31dbc8bf[arg1].field_264
                else:
                    mem[128] = sub_31dbc8bf[arg1][1].field_0
                    idx = 128
                    s = 0
                    while sub_31dbc8bf[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_31dbc8bf[arg1].field_0, 
               Array(len=2 * Mask(256, -1, sub_31dbc8bf[arg1].field_256), data=mem[128 len ceil32(uint255(sub_31dbc8bf[arg1].field_256) * 0.5)]),
               bool(sub_31dbc8bf[arg1].field_512),
               sub_31dbc8bf[arg1].field_512,
               sub_31dbc8bf[arg1].field_1536,
               sub_31dbc8bf[arg1].field_1792,
               sub_31dbc8bf[arg1].field_2048
    if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
        revert with 0, 34
    if sub_31dbc8bf[arg1].field_256:
        if sub_31dbc8bf[arg1].field_256 == uint255(sub_31dbc8bf[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_31dbc8bf[arg1].field_256):
            if 31 >= uint255(sub_31dbc8bf[arg1].field_256) * 0.5:
                mem[128] = 256 * sub_31dbc8bf[arg1].field_264
            else:
                mem[128] = sub_31dbc8bf[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(sub_31dbc8bf[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_31dbc8bf[arg1].field_256 == sub_31dbc8bf[arg1].field_257 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1].field_257:
            if 31 >= sub_31dbc8bf[arg1].field_257:
                mem[128] = 256 * sub_31dbc8bf[arg1].field_264
            else:
                mem[128] = sub_31dbc8bf[arg1][1].field_0
                idx = 128
                s = 0
                while sub_31dbc8bf[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_31dbc8bf[arg1].field_0, 
           Array(len=sub_31dbc8bf[arg1].field_256, data=mem[128 len ceil32(sub_31dbc8bf[arg1].field_257)]),
           bool(sub_31dbc8bf[arg1].field_512),
           sub_31dbc8bf[arg1].field_512,
           sub_31dbc8bf[arg1].field_1536,
           sub_31dbc8bf[arg1].field_1792,
           sub_31dbc8bf[arg1].field_2048
}

function sub_80eb0254(?) {
    require calldata.size - 4 >= 64
    if sub_31dbc8bf[arg1][5][arg2].field_0:
        if sub_31dbc8bf[arg1][5][arg2].field_0 == uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1][5][arg2].field_0:
            if sub_31dbc8bf[arg1][5][arg2].field_0 == uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_31dbc8bf[arg1][5][arg2].field_0):
                if 31 >= uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5:
                    mem[128] = 256 * sub_31dbc8bf[arg1][5][arg2].field_8
                else:
                    mem[128] = sub_31dbc8bf[arg1][5][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][5][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_31dbc8bf[arg1][5][arg2].field_0 == sub_31dbc8bf[arg1][5][arg2].field_1 < 32:
                revert with 0, 34
            if sub_31dbc8bf[arg1][5][arg2].field_1:
                if 31 >= sub_31dbc8bf[arg1][5][arg2].field_1:
                    mem[128] = 256 * sub_31dbc8bf[arg1][5][arg2].field_8
                else:
                    mem[128] = sub_31dbc8bf[arg1][5][arg2].field_0
                    idx = 128
                    s = 0
                    while sub_31dbc8bf[arg1][5][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = sub_31dbc8bf[arg1][5][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, sub_31dbc8bf[arg1][5][arg2].field_0), data=mem[128 len ceil32(uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5)]), 
               sub_31dbc8bf[arg1][5][arg2].field_256,
               sub_31dbc8bf[arg1][5][arg2].field_768,
               sub_31dbc8bf[arg1][5][arg2].field_1024,
               sub_31dbc8bf[arg1][5][arg2].field_1280,
               sub_31dbc8bf[arg1][5][arg2].field_1536,
               bool(sub_31dbc8bf[arg1][5][arg2].field_1800),
               bool(sub_31dbc8bf[arg1][5][arg2].field_1808)
    if sub_31dbc8bf[arg1][5][arg2].field_0 == sub_31dbc8bf[arg1][5][arg2].field_1 < 32:
        revert with 0, 34
    if sub_31dbc8bf[arg1][5][arg2].field_0:
        if sub_31dbc8bf[arg1][5][arg2].field_0 == uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_31dbc8bf[arg1][5][arg2].field_0):
            if 31 >= uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5:
                mem[128] = 256 * sub_31dbc8bf[arg1][5][arg2].field_8
            else:
                mem[128] = sub_31dbc8bf[arg1][5][arg2].field_0
                idx = 128
                s = 0
                while (uint255(sub_31dbc8bf[arg1][5][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][5][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_31dbc8bf[arg1][5][arg2].field_0 == sub_31dbc8bf[arg1][5][arg2].field_1 < 32:
            revert with 0, 34
        if sub_31dbc8bf[arg1][5][arg2].field_1:
            if 31 >= sub_31dbc8bf[arg1][5][arg2].field_1:
                mem[128] = 256 * sub_31dbc8bf[arg1][5][arg2].field_8
            else:
                mem[128] = sub_31dbc8bf[arg1][5][arg2].field_0
                idx = 128
                s = 0
                while sub_31dbc8bf[arg1][5][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = sub_31dbc8bf[arg1][5][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=sub_31dbc8bf[arg1][5][arg2].field_0, data=mem[128 len ceil32(sub_31dbc8bf[arg1][5][arg2].field_1)]), 
           sub_31dbc8bf[arg1][5][arg2].field_256,
           sub_31dbc8bf[arg1][5][arg2].field_768,
           sub_31dbc8bf[arg1][5][arg2].field_1024,
           sub_31dbc8bf[arg1][5][arg2].field_1280,
           sub_31dbc8bf[arg1][5][arg2].field_1536,
           bool(sub_31dbc8bf[arg1][5][arg2].field_1800),
           bool(sub_31dbc8bf[arg1][5][arg2].field_1808)
}

function sub_19207401(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[('cd', 4).length + 128] = 0
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 130
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if uint8(stor0.field_0):
        revert with 0, 'Reentrancy!'
    uint8(stor0.field_0) = 1
    if not stor1[msg.sender]:
        if sub_6e4cf9ad != msg.value:
            revert with 0, 'Wrong price, you tried!'
        sub_31dbc8bf[stor6].field_512 = 1
        if sub_31dbc8bf[stor6].field_256:
            if sub_31dbc8bf[stor6].field_256 == uint255(sub_31dbc8bf[stor6].field_256) * 0.5 < 32:
                revert with 0, 34
            if ('cd', 4).length:
                sub_31dbc8bf[stor6][1][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            else:
                sub_31dbc8bf[stor6].field_256 = 0
                idx = 0
                while (uint255(sub_31dbc8bf[stor6].field_256) * 0.5) + 31 / 32 > idx:
                    sub_31dbc8bf[stor6][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if sub_31dbc8bf[stor6].field_256 == sub_31dbc8bf[stor6].field_257 < 32:
                revert with 0, 34
            if ('cd', 4).length:
                sub_31dbc8bf[stor6][1][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            else:
                sub_31dbc8bf[stor6].field_256 = 0
                idx = 0
                while sub_31dbc8bf[stor6].field_257 + 31 / 32 > idx:
                    sub_31dbc8bf[stor6][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        sub_31dbc8bf[stor6].field_520 = msg.sender
        sub_31dbc8bf[stor6].field_0 = address(cd[36])
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 141 len 20]
            mem[32] = sha3(last_id, 4) + 3
            sub_31dbc8bf[stor6][3][mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 141 len 20]].field_0 = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 100).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 142 len 20]
            mem[32] = sha3(last_id, 4) + 4
            sub_31dbc8bf[stor6][4][mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 68).length) + 142 len 20]].field_0 = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_31dbc8bf[stor6].field_2048 = cd[132]
        stor5[msg.sender].field_0++
        stor5[msg.sender][stor5[msg.sender].field_0].field_0 = last_id
        if last_id == -1:
            revert with 0, 17
        last_id++
        if last_id < 1:
            revert with 0, 17
    uint8(stor0.field_0) = 0
}



}
