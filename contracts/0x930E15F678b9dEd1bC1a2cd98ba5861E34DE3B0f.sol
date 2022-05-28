contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_c3825f4b;

function owner() {
    return owner
}

function sub_c3825f4b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_c3825f4b[arg1[all]]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPrice(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function pay(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
        if msg.value < stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
            revert with 0, 'ServiceProvider: Incorrect price'
}

function setPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            emit OwnershipTransferred(owner, 0);
            owner = 0
        else:
            if unknown_0x8980f11f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xc3825f4b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 <= test266151307()
                    require arg1 + 35 < calldata.size
                    if arg1.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg1 + arg1.length + 36 <= calldata.size
                    return sub_c3825f4b[arg1[all]]
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
    if uint32(call.func_hash) >> 224 != unknown_0x22e01192(?????):
        if unknown_0x2b66d72e(?????) == uint32(call.func_hash) >> 224:
            require calldata.size - 4 >= 32
            require arg1 <= test266151307()
            require arg1 + 35 < calldata.size
            if arg1.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                revert with 0, 65
            mem[128] = arg1.length
            require arg1 + arg1.length + 36 <= calldata.size
            mem[160 len arg1.length] = arg1[all]
            mem[arg1.length + 160] = 0
            if owner != msg.sender:
                mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 129] = 1
                if msg.value < stor[sha3(mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + 32])]:
                    revert with 0, 'ServiceProvider: Incorrect price'
        if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != unknown_0x524f3889(?????):
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 <= test266151307()
        require arg1 + 35 < calldata.size
        if arg1.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
            revert with 0, 65
        mem[128] = arg1.length
        require arg1 + arg1.length + 36 <= calldata.size
        mem[160 len arg1.length] = arg1[all]
        mem[arg1.length + 160] = 0
    else:
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 <= test266151307()
        require arg1 + 35 < calldata.size
        if arg1.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
            revert with 0, 65
        mem[128] = arg1.length
        require arg1 + arg1.length + 36 <= calldata.size
        mem[160 len arg1.length] = arg1[all]
        mem[arg1.length + 160] = 0
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 129] = 1
        stor[sha3(mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + 32])] = arg2
    mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 129] = 1
    mem[ceil32(ceil32(arg1.length)) + 129] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 129
       len 32
}



}
