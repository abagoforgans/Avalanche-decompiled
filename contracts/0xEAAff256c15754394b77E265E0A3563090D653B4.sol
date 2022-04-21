contract main {




// =====================  Runtime code  =====================


const mintAddress = 0x1358005777d3d7193a2426a76d434f9bba0a5575

const DD = 0x1358005777d3d7193a2426a76d434f9bba0a5575


address owner;
uint256 stor1;
uint256 totalSupply;
uint256 totalSupplyLast;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 reflectionSize;
mapping of uint256 lastDividendAt;

function totalSupply() {
    return totalSupply
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function owner() {
    return owner
}

function totalSupplyLast() {
    return totalSupplyLast
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function reflectionSize() {
    return reflectionSize
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setReflectionSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reflectionSize = arg1
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalSupply:
        return 0
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function updateReflections() {
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    totalSupply = ext_call.return_data[0]
    # nil
}

function updateReflectionsTo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 <= totalSupply:
        revert with 0, 'newTotalSupply must be larger than totalSupply'
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'newTotalSupply must be larger than totalSupply'
    totalSupply = arg1
    # nil
}

function getReflectionBalanceDue() {
    idx = 0
    s = 0
    while idx < totalSupply:
        mem[0] = idx
        mem[32] = 8
        if totalDividend < lastDividendAt[idx]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[idx] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[idx]
        continue 
    return (s * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply * totalSupply)
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16]
        if mem[_16] >= totalSupply:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_16]
        mem[32] = 8
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[mem[0]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[0]]
        continue 
    return s
}

function claimReflectionBalance() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a5575)
        staticcall 0x1358005777d3d7193a2426a76d434f9bba0a5575.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        require mem[_24] == mem[_24]
        if mem[_24] >= totalSupply:
            if s > -1:
                revert with 'NH{q', 17
            mem[0] = mem[_24]
            mem[32] = 8
            lastDividendAt[mem[0]] = totalDividend
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_24]
        _26 = sha3(mem[0], 8)
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[mem[0]] - 1:
            revert with 'NH{q', 17
        mem[0] = _25
        mem[32] = 8
        lastDividendAt[_25] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - stor[_26]
        continue 
    if s <= 0:
        revert with 0, 'Zero claim due'
    if eth.balance(this.address) <= s:
        revert with 0, 'Contract underfunded'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor1 = 1
}



}
