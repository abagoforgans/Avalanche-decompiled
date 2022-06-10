contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalMinted;
address stor2;
address stor3;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function totalMinted() {
    return totalMinted
}

function balanceWAVAX() {
    return balanceWAVAX
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_387ab209(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xa22cb465 with:
         gas gas_remaining wei
        args 0x82a85407bd612f52577909f4a58bfc6873f14da8, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3cf748ef(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.0x31c1bf82 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6bf518b5(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.0xc0d8080c with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72dba6ab(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.0xcf034493 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_24733e1a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.startGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_930bc92d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.closeGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04be15d1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.settleGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0e19bf49(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c54c0e3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.attack(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_5a1befe2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(stor3)
    call stor3.deposit(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a30b1cc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(stor3)
    call stor3.withdraw(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    else:
        if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa2309ff8(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x72dba6ab(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor3)
                        call stor3.0xcf034493 with:
                             gas gas_remaining wei
                            args cd[4], cd[36], cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x83786f8c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0x930bc92d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor3)
                            call stor3.closeGame(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xa2309ff8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalMinted
                if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if unknown_0xe5c9ceb3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return balanceWAVAX
                        if unknown_0xeae7236f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                owner = address(cd[4])
                                emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0x387ab209(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x04be15d1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor3)
                    call stor3.settleGame(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x0e19bf49(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor2)
                    call stor2.0x42842e0e with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                    if unknown_0x1c54c0e3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor3)
                        call stor3.attack(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args cd[4], cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x24733e1a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor3)
                            call stor3.startGame(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if unknown_0x387ab209(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(stor2)
                call stor2.0xa22cb465 with:
                     gas gas_remaining wei
                    args 0x82a85407bd612f52577909f4a58bfc6873f14da8, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x3a30b1cc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[ceil32(32 * ('cd', 4).length) + 129] = 0x8293744b00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
                    require ext_code.size(stor3)
                    call stor3.withdraw(address arg1, uint256[] arg2) with:
                         gas gas_remaining wei
                        args address(this.address), Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x3cf748ef(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor3)
                        call stor3.0x31c1bf82 with:
                             gas gas_remaining wei
                            args cd[4], cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x5a1befe2(?????):
                            if unknown_0x6bf518b5(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(stor3)
                                call stor3.0xc0d8080c with:
                                     gas gas_remaining wei
                                    args cd[4], cd[36], cd[68]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 4).length
                            require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                            s = cd[4] + 36
                            t = 160
                            idx = 0
                            while idx < ('cd', 4).length:
                                mem[t] = cd[s]
                                s = s + 32
                                t = t + 32
                                idx = idx + 1
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + 133] = 32
                            require ext_code.size(stor3)
                            call stor3.deposit(uint256[] arg1) with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
