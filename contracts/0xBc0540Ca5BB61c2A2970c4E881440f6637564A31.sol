contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
mapping of uint8 stor11;

function sub_f7f43c3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    if not arg1:
    selfdestruct(stor0)
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x7065cb48(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc311d049(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xc311d049(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    if cd[4] <= eth.balance(this.address):
                        call msg.sender with:
                           value cd[4] wei
                             gas gas_remaining wei
                    else:
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '[761876] something went wrong'
                    return bool(ext_call.success)
                if unknown_0xf7f43c3a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    if not cd[4]:
                    selfdestruct(stor0)
                if unknown_0xf926197e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    require ext_code.size(stor7)
                    call stor7.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x7065cb48(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    stor11[address(cd[4])] = 1
                else:
                    if unknown_0x7137ed47(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not stor11[msg.sender]:
                            revert with 0, 'Only I can do this.'
                        stor10 = address(cd[4])
                    else:
                        if unknown_0xbd5dec98(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require calldata.size > cd[4] + 35
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + 129
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = cd[4] + 36
                            t = 160
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[s] == address(cd[s])
                                mem[t] = cd[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            mem[0] = msg.sender
                            mem[32] = 11
                            if not stor11[msg.sender]:
                                revert with 0, 'Only I can do this.'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= mem[128]:
                                    revert with 0, 50
                                _192 = mem[(32 * idx) + 160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_192))
                                staticcall address(_192).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _195 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _196 = mem[_195]
                                if mem[_195]:
                                    if idx >= mem[128]:
                                        revert with 0, 50
                                    _198 = mem[(32 * idx) + 160]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _196
                                    require ext_code.size(address(_198))
                                    call address(_198).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _196
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _201 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_201] == bool(mem[_201])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
        else:
            if unknown_0x5aeda7c1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x173825d9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    stor11[address(cd[4])] = 0
                else:
                    if unknown_0x264248a5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not stor11[msg.sender]:
                            revert with 0, 'Only I can do this.'
                        stor0 = address(cd[4])
            else:
                if unknown_0x5aeda7c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if not stor11[msg.sender]:
                        revert with 0, 'Only I can do this.'
                    if ('cd', 4).length != 4:
                        revert with 0, '[891648213] Need value'
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    stor2 = mem[160]
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    stor1 = mem[192]
                    if 2 >= ('cd', 4).length:
                        revert with 0, 50
                    stor3 = mem[224]
                    if 3 >= ('cd', 4).length:
                        revert with 0, 50
                    stor4 = mem[256]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x636de259(?????):
                        if unknown_0x6994688c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not stor11[msg.sender]:
                                revert with 0, 'Only I can do this.'
                            stor5 = address(cd[4])
                    else:
                        require not msg.value
                        if not stor11[msg.sender]:
                            revert with 0, 'Only I can do this.'
                        require ext_code.size(stor6)
                        staticcall stor6.0x9975b113 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 10^18:
                            revert with 0, '[6718471] Not Enough Ether'
                        if stor4 and block.gasprice > -1 / stor4:
                            revert with 0, 17
                        if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if 10 * ext_call.return_data[0] / 100 and stor3 > -1 / 10 * ext_call.return_data[0] / 100:
                            revert with 0, 17
                        if stor4 * block.gasprice >= 10 * ext_call.return_data[0] / 100 * stor3 / 10000:
                            revert with 0, '[94041374361] Not enough juice for the squeeze'
                        require ext_code.size(stor6)
                        staticcall stor6.0x26b5e81a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            if eth.balance(this.address) < stor2:
                                revert with 0, 17
                            if eth.balance(this.address) - stor2 < 10^18:
                                require ext_code.size(stor8)
                                staticcall stor8.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 5 * 10^17 > !stor2:
                                    revert with 0, 17
                                if eth.balance(this.address) >= stor2 + 5 * 10^17:
                                    revert with 0, '[62241673] Not Enough Ether'
                                if ext_call.return_data[0] <= 10^18:
                                    revert with 0, '[62241673] Not Enough Ether'
                                require ext_code.size(stor9)
                                call stor9.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < stor2:
                                    revert with 0, 17
                                if eth.balance(this.address) - stor2 <= 10^18:
                                    revert with 0, '[84491786] Not Enough Ether'
                            require ext_code.size(stor5)
                            if eth.balance(this.address) - stor2 <= stor1:
                                call stor5.zapIn(address arg1) with:
                                   value eth.balance(this.address) - stor2 wei
                                     gas gas_remaining wei
                                    args stor7
                            else:
                                call stor5.zapIn(address arg1) with:
                                   value stor1 wei
                                     gas gas_remaining wei
                                    args stor7
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor7)
                            staticcall stor7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
                            revert with 0, 17
                        require ext_code.size(stor6)
                        if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
                            call stor6.0xba560803 with:
                                 gas gas_remaining wei
                                args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
                        else:
                            call stor6.0xba560803 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function updateSink(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor0 = arg1
}

function setProxyContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor10 = arg1
}

function updateTraderAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor5 = arg1
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor11[address(arg1)] = 1
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor11[address(arg1)] = 0
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    if arg1 <= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '[761876] something went wrong'
    return bool(ext_call.success)
}

function updateApproval() {
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor7)
    call stor7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5aeda7c1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    if ('cd', 4).length != 4:
        revert with 0, '[891648213] Need value'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    stor2 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    stor1 = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    stor3 = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    stor4 = mem[224]
}

function withdraw(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 11
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _36 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_36))
        staticcall address(_36).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _40 = mem[_39]
        if mem[_39]:
            if idx >= mem[96]:
                revert with 0, 50
            _42 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _40
            require ext_code.size(address(_42))
            call address(_42).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _40
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == bool(mem[_45])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function printItWithZap() {
    if not stor11[msg.sender]:
        revert with 0, 'Only I can do this.'
    require ext_code.size(stor6)
    staticcall stor6.0x9975b113 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 10^18:
        revert with 0, '[6718471] Not Enough Ether'
    if stor4 and block.gasprice > -1 / stor4:
        revert with 0, 17
    if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if 10 * ext_call.return_data[0] / 100 and stor3 > -1 / 10 * ext_call.return_data[0] / 100:
        revert with 0, 17
    if stor4 * block.gasprice >= 10 * ext_call.return_data[0] / 100 * stor3 / 10000:
        revert with 0, '[94041374361] Not enough juice for the squeeze'
    require ext_code.size(stor6)
    staticcall stor6.0x26b5e81a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if eth.balance(this.address) < stor2:
            revert with 0, 17
        if eth.balance(this.address) - stor2 < 10^18:
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 5 * 10^17 > !stor2:
                revert with 0, 17
            if eth.balance(this.address) >= stor2 + 5 * 10^17:
                revert with 0, '[62241673] Not Enough Ether'
            if ext_call.return_data[0] <= 10^18:
                revert with 0, '[62241673] Not Enough Ether'
            require ext_code.size(stor9)
            call stor9.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < stor2:
                revert with 0, 17
            if eth.balance(this.address) - stor2 <= 10^18:
                revert with 0, '[84491786] Not Enough Ether'
        require ext_code.size(stor5)
        if eth.balance(this.address) - stor2 <= stor1:
            call stor5.zapIn(address arg1) with:
               value eth.balance(this.address) - stor2 wei
                 gas gas_remaining wei
                args stor7
        else:
            call stor5.zapIn(address arg1) with:
               value stor1 wei
                 gas gas_remaining wei
                args stor7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor7)
        staticcall stor7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < 10000:
        revert with 0, 17
    require ext_code.size(stor6)
    if (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000 <= ext_call.return_data[0]:
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args ((10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 10000)
    else:
        call stor6.0xba560803 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
