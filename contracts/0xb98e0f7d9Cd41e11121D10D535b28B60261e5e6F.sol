contract main {




// =====================  Runtime code  =====================


const HARD_CAP = 40000 * 10^18


uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address beneficiaryAddress;
address oracleAddress;
uint256 maxContribution;
uint256 minContribution;
uint256 sub_112f1907;
mapping of uint256 contributions;
array of address contributors;
mapping of uint8 stor9;

function sub_112f1907(?) payable {
    return sub_112f1907
}

function beneficiary() payable {
    return beneficiaryAddress
}

function contributors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < contributors.length
    return contributors[arg1]
}

function contributions(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function isOpen() payable {
    return bool(uint8(stor1.field_160))
}

function approvedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function oracle() payable {
    return oracleAddress
}

function maxContribution() payable {
    return maxContribution
}

function owner() payable {
    return owner
}

function minContribution() payable {
    return minContribution
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSaleOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if oracleAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 2678841793
    oracleAddress = arg1
}

function setBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 2678841793
    beneficiaryAddress = arg1
}

function setMaxContribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        maxContribution = arg1
    else:
        maxContribution = -1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 2678841793
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function contribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor1.field_160):
        revert with Closed()
    if not stor9[address(arg1)]:
        revert with 0, arg1
    if not arg2:
        revert with 3419036322
    if arg2 < minContribution:
        revert with 1133411866
    if arg2 > maxContribution:
        revert with 2899568651
    if arg2 + sub_112f1907 > 40000 * 10^18:
        if arg2 > -sub_112f1907 - 1:
            revert with 'NH{q', 17
        revert with 'G@=&', arg2 + sub_112f1907
    if sub_112f1907 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_112f1907 += arg2
    if not contributions[address(msg.sender)]:
        contributors.length++
        contributors[contributors.length] = msg.sender
    if contributions[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    contributions[address(msg.sender)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Contribution(arg2, msg.sender, arg1);
    stor0 = 1
}

function sub_92463bed(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 2678841793
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + floor32(('cd', 4).length) + 129]))
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = bool(mem[(32 * idx) + floor32(('cd', 4).length) + 129])
        emit 0xb68249cf: mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98], address(_69)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
