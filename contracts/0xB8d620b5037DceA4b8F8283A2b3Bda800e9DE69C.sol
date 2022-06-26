contract main {




// =====================  Runtime code  =====================


address owner;
address sub_80fe82dcAddress;

function sub_80fe82dc(?) payable {
    return sub_80fe82dcAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_80fe82dcAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function borrow(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, 2, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function unlend(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function lend(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args sub_80fe82dcAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_80fe82dcAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function repay(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args sub_80fe82dcAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_80fe82dcAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, 2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_975cf3f9(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[164] = 2
    mem[196] = 0
    mem[228] = this.address
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, cd[68], 2, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = address(cd[4])
    mem[132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(cd[4]), this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[68]
        mem[ceil32(return_data.size) + 132] = cd[100]
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = ceil32(return_data.size) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _37 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _39 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = _39
        require _37 + (32 * _39) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _37 + 128
        t = (2 * ceil32(return_data.size)) + 128
        while idx < _39:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_83]
        require mem[_83] == mem[_83]
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_91] == mem[_91]
        if not mem[_91]:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == bool(mem[_101])
        require ext_code.size(sub_80fe82dcAddress)
        call sub_80fe82dcAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _85, address(this.address), 0
    else:
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _38 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _40 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _40
        require _38 + (32 * _40) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _38 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _40:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _86 = mem[_84]
        require mem[_84] == mem[_84]
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_92] == mem[_92]
        if not mem[_92]:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_102] == bool(mem[_102])
        require ext_code.size(sub_80fe82dcAddress)
        call sub_80fe82dcAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _86, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7d5eb21(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = address(cd[36])
    mem[132] = cd[68]
    mem[164] = this.address
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(cd[36]), cd[68], this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(cd[4]), this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _39 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _41 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _41
        require _39 + (32 * _41) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _39 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _41:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _87 = mem[_85]
        require mem[_85] == mem[_85]
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_93] == mem[_93]
        if not mem[_93]:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == bool(mem[_103])
        require ext_code.size(sub_80fe82dcAddress)
        call sub_80fe82dcAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _87, address(this.address), 0
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 132] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(4 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(4 * ceil32(return_data.size)) + 164] = 160
        mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (4 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _40 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _42 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = _42
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _40 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_86]
        require mem[_86] == mem[_86]
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_94] == mem[_94]
        if not mem[_94]:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == bool(mem[_104])
        require ext_code.size(sub_80fe82dcAddress)
        call sub_80fe82dcAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _88, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df67788b(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[164] = 2
    mem[196] = 0
    mem[228] = this.address
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, cd[68], 2, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = address(cd[4])
    mem[132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(cd[4]), this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[68]
        mem[ceil32(return_data.size) + 132] = cd[100]
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = ceil32(return_data.size) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _38 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _40 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = _40
        require _38 + (32 * _40) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _38 + 128
        t = (2 * ceil32(return_data.size)) + 128
        while idx < _40:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_84] == mem[_84]
        if mem[_84]:
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_102] == mem[_102]
        else:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_94] == bool(mem[_94])
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_108] == mem[_108]
    else:
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _39 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _41 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _41
        require _39 + (32 * _41) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _39 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _41:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == mem[_85]
        if mem[_85]:
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103]
        else:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == bool(mem[_95])
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_109] == mem[_109]
}

function sub_c69997a0(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = address(cd[36])
    mem[132] = cd[68]
    mem[164] = this.address
    require ext_code.size(sub_80fe82dcAddress)
    call sub_80fe82dcAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(cd[36]), cd[68], this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(cd[4]), this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _40 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _42 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _42
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _40 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_86] == mem[_86]
        if mem[_86]:
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == mem[_104]
        else:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == bool(mem[_96])
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_110] == mem[_110]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(2 * ceil32(return_data.size)) + 132] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = cd[68]
        mem[(4 * ceil32(return_data.size)) + 132] = cd[100]
        mem[(4 * ceil32(return_data.size)) + 164] = 160
        mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = (4 * ceil32(return_data.size)) + 292
        while idx < ('cd', 132).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _41 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _43 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = _43
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _41 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 132).length - 1 < ('cd', 132).length
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[mem[64] + 4] = sub_80fe82dcAddress
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args sub_80fe82dcAddress, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_87] == mem[_87]
        if mem[_87]:
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105]
        else:
            mem[mem[64] + 4] = sub_80fe82dcAddress
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_80fe82dcAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_97] == bool(mem[_97])
            mem[mem[64] + 4] = address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(sub_80fe82dcAddress)
            call sub_80fe82dcAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), cd[100], 2, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_111] == mem[_111]
}



}
