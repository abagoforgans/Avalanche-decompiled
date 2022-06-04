contract main {




// =====================  Runtime code  =====================


#
#  - sub_8cea123c(?)
#  - sub_dd198fe2(?)
#
address owner;
address tokenAddress;
address sub_9ebdf12cAddress;
address stakingAddress;
address router02Address;
array of address bonds;
mapping of struct sub_ba5e5e84;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_0760bf28(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_ba5e5e84[address(arg1)].field_256
    return stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_ba5e5e84', 6))) + arg2].field_0
}

function sub_1dcedace(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_ba5e5e84[address(arg1)].field_0)
}

function sub_4a3ec80d(?) {
    return bonds.length
}

function staking() {
    return stakingAddress
}

function bonds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bonds.length
    return bonds[arg1]
}

function owner() {
    return owner
}

function sub_9ebdf12c(?) {
    return sub_9ebdf12cAddress
}

function sub_ba5e5e84(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ba5e5e84[address(arg1)].field_256
}

function router02() {
    return router02Address
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fd5b9092(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_ba5e5e84[address(arg1)].field_0 = 0
    sub_ba5e5e84[address(arg1)].field_256 = 0
    idx = 0
    while sub_ba5e5e84[address(arg1)].field_256 > idx:
        sub_ba5e5e84[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < bonds.length:
        mem[0] = 5
        if bonds[idx] != address(arg1):
            idx = idx + 1
            continue 
        if idx != bonds.length - 1:
            require bonds.length - 1 < bonds.length
            require idx < bonds.length
            bonds[idx] = bonds[bonds.length]
        require bonds.length
        bonds[bonds.length] = 0
        bonds.length--
        return 1
    return 0
}

function sub_ba549056(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_ba5e5e84[address(cd[4])].field_256:
        require idx < ('cd', 36).length
        require idx < sub_ba5e5e84[address(cd[4])].field_256
        mem[0] = sha3(address(cd[4]), 6) + 1
        if sub_ba5e5e84[address(cd[4])][idx + 1].field_0 == mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_c5db6d0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingAddress)
    call stakingAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingAddress)
    call stakingAddress.claim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function releaseAllFunds(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _52 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_52))
        staticcall address(_52).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require idx < mem[96]
        _58 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _56
        require ext_code.size(address(_58))
        call address(_58).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, _56
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == bool(mem[_61])
        require idx < mem[96]
        _64 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = owner
        require ext_code.size(address(_64))
        staticcall address(_64).balanceOf(address arg1) with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] >= _56
        idx = idx + 1
        continue 
}

function sub_8080e8f7(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call address(cd[36]) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _52 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_52))
        staticcall address(_52).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require idx < mem[96]
        _58 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = _56
        require ext_code.size(address(_58))
        call address(_58).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), _56
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == bool(mem[_61])
        require idx < mem[96]
        _64 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(_64))
        staticcall address(_64).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] >= _56
        idx = idx + 1
        continue 
}

function sub_7186b0e6(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_ba5e5e84[address(cd[4])].field_0:
        sub_ba5e5e84[address(cd[4])].field_0 = 1
        bonds.length++
        stor36B6[stor5.length] = address(cd[4])
    sub_ba5e5e84[address(cd[4])].field_256 = 0
    idx = 0
    while sub_ba5e5e84[address(cd[4])].field_256 > idx:
        sub_ba5e5e84[address(cd[4])][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        sub_ba5e5e84[address(cd[4])].field_256++
        mem[0] = sha3(address(cd[4]), 6) + 1
        stor[sub_ba5e5e84[address(cd[4])].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'sub_ba5e5e84', 6)))].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    require sub_ba5e5e84[address(cd[4])].field_256 - 1 < sub_ba5e5e84[address(cd[4])].field_256
    if sub_ba5e5e84[address(cd[4])].field_256 != 1:
        if sub_9ebdf12cAddress == stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'sub_ba5e5e84', 6))) + sub_ba5e5e84[address(cd[4])].field_256].field_0:
            revert with 0, 'IP'
    else:
        if tokenAddress != stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'sub_ba5e5e84', 6))) + sub_ba5e5e84[address(cd[4])].field_256].field_0:
            revert with 0, 'IET'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).principle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).isLiquidityBond() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router02Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router02Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return not bool(sub_ba5e5e84[address(cd[4])].field_0)
}

function execute(address[] arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and (32 * arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[64] = (32 * arg1.length) + ceil32(arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _100 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_100))
        staticcall address(_100).balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _111 = mem[_106]
        require idx < mem[96]
        _115 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _111
        require ext_code.size(address(_115))
        call address(_115).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _111
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_121] == bool(mem[_121])
        require idx < mem[96]
        _128 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_128))
        staticcall address(_128).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_133] >= _111
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[(32 * arg1.length) + 128]:
        call mem[idx + (32 * arg1.length) + 160 len 20].mem[idx + (32 * arg1.length) + 244 len 4] with:
           value mem[idx + (32 * arg1.length) + 180] wei
             gas gas_remaining - 5000 wei
            args mem[idx + (32 * arg1.length) + 248 len mem[idx + (32 * arg1.length) + 212] - 4]
        require ext_call.success
        idx = idx + mem[idx + (32 * arg1.length) + 212] + 84
        continue 
    _165 = mem[96]
    idx = 0
    while idx < _165:
        require idx < mem[96]
        _168 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_168))
        staticcall address(_168).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_171]
        require idx < mem[96]
        _174 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _172
        require ext_code.size(address(_174))
        call address(_174).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, _172
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_177] == bool(mem[_177])
        require idx < mem[96]
        _180 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_180))
        staticcall address(_180).balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_183] >= _172
        _165 = mem[96]
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
