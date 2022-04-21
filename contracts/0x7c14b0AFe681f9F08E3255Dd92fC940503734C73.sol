contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address mintAddress;
uint256 reflectionSize;
uint256 totalReflection;
uint256 totalSupply;
uint256 totalSupplyLast;
mapping of uint256 reflections;
mapping of uint256 sub_f398e2be;
address DDAddress;

function totalSupply() {
    return totalSupply
}

function totalReflection() {
    return totalReflection
}

function mintAddress() {
    return mintAddress
}

function reflections(uint256 arg1) {
    require calldata.size - 4 >= 32
    return reflections[arg1]
}

function owner() {
    return owner
}

function totalSupplyLast() {
    return totalSupplyLast
}

function reflectionSize() {
    return reflectionSize
}

function DD() {
    return DDAddress
}

function sub_f398e2be(?) {
    require calldata.size - 4 >= 32
    return sub_f398e2be[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setReflectionSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reflectionSize = arg1
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if reflections[arg1] < sub_f398e2be[arg1]:
        revert with 0, 17
    return (reflections[arg1] - sub_f398e2be[arg1])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function updateReflections() {
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalSupply = ext_call.return_data[0]
    # nil
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

function getReflectionBalanceDue() {
    idx = 0
    s = 0
    while idx < totalSupply:
        mem[0] = idx
        mem[32] = 8
        if reflections[idx] < sub_f398e2be[idx]:
            revert with 0, 17
        if s > !(reflections[idx] - sub_f398e2be[idx]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + reflections[idx] - sub_f398e2be[idx]
        continue 
    return (s * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply)
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(DDAddress)
        staticcall DDAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[0] = mem[_17]
        mem[32] = 8
        if reflections[mem[0]] < sub_f398e2be[mem[0]]:
            revert with 0, 17
        if s > !(reflections[mem[0]] - sub_f398e2be[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + reflections[mem[0]] - sub_f398e2be[mem[0]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function claimReflectionBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(DDAddress)
    staticcall DDAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(DDAddress)
        staticcall DDAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_22]
        mem[0] = mem[_22]
        _25 = sha3(mem[0], 9)
        _26 = sha3(mem[0], 8)
        if reflections[mem[0]] < sub_f398e2be[mem[0]]:
            revert with 0, 17
        if s > !(reflections[mem[0]] - sub_f398e2be[mem[0]]):
            revert with 0, 17
        mem[0] = _24
        mem[32] = 9
        if sub_f398e2be[_24] > !(stor[_26] - stor[_25]):
            revert with 0, 17
        sub_f398e2be[_24] = sub_f398e2be[_24] + stor[_26] - stor[_25]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor[_26] - stor[_25]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
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
        if unknown_0x71d3cbbf(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require ext_code.size(DDAddress)
            staticcall DDAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalSupply = ext_call.return_data[0]
            # nil
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x944327b1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupplyLast
            if uint32(call.func_hash) >> 224 != unknown_0xa708d404(?????):
                if unknown_0xd61ff27a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return reflectionSize
                if unknown_0xeccc32f2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return DDAddress
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf398e2be(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_f398e2be[arg1]
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            mem[132] = address(arg1)
            require ext_code.size(DDAddress)
            staticcall DDAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(DDAddress)
                staticcall DDAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _90 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[0] = mem[_90]
                mem[32] = 8
                if reflections[mem[0]] < sub_f398e2be[mem[0]]:
                    revert with 0, 17
                if s > !(reflections[mem[0]] - sub_f398e2be[mem[0]]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + reflections[mem[0]] - sub_f398e2be[mem[0]]
                continue 
            return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
    else:
        if getReflectionBalance(uint256 rg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if reflections[arg1] < sub_f398e2be[arg1]:
                revert with 0, 17
            return (reflections[arg1] - sub_f398e2be[arg1])
        if getReflectionBalanceDue() == uint32(call.func_hash) >> 224:
            require not msg.value
            idx = 0
            s = 0
            while idx < totalSupply:
                mem[0] = idx
                mem[32] = 8
                if reflections[idx] < sub_f398e2be[idx]:
                    revert with 0, 17
                if s > !(reflections[idx] - sub_f398e2be[idx]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + reflections[idx] - sub_f398e2be[idx]
                continue 
            return (s * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply)
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return totalSupply
        if unknown_0x22849720(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return totalReflection
        if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if unknown_0x425d4980(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return mintAddress
            if unknown_0x4c196a9a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return reflections[arg1]
            if uint32(call.func_hash) >> 224 != unknown_0x64f06f5e(?????):
                if unknown_0x6d10f107(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    reflectionSize = arg1
            else:
                require not msg.value
                if stor1 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor1 = 2
                mem[132] = msg.sender
                require ext_code.size(DDAddress)
                staticcall DDAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = idx
                    require ext_code.size(DDAddress)
                    staticcall DDAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _88 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _92 = mem[_88]
                    mem[0] = mem[_88]
                    _94 = sha3(mem[0], 9)
                    _95 = sha3(mem[0], 8)
                    if reflections[mem[0]] < sub_f398e2be[mem[0]]:
                        revert with 0, 17
                    if s > !(reflections[mem[0]] - sub_f398e2be[mem[0]]):
                        revert with 0, 17
                    mem[0] = _92
                    mem[32] = 9
                    if sub_f398e2be[_92] > !(stor[_95] - stor[_94]):
                        revert with 0, 17
                    sub_f398e2be[_92] = sub_f398e2be[_92] + stor[_95] - stor[_94]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_95] - stor[_94]
                    continue 
                if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
                    revert with 0, 'Zero claim due'
                if eth.balance(this.address) <= s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'Contract underfunded'
                call msg.sender with:
                   value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                stor1 = 1
}



}
