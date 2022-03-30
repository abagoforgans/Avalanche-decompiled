contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address routerAddress;
array of address sub_739d8df9;

function name() {
    return name[0 len name.length]
}

function sub_739d8df9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_739d8df9.length
    return address(sub_739d8df9[arg1])
}

function owner() {
    return owner
}

function sub_c44fe143(?) {
    return sub_739d8df9.length
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67368170(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function revokeAllowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_aa9dd44c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_739d8df9.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_739d8df9.length > idx:
            uint256(sub_739d8df9[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_739d8df9[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_739d8df9.length > idx:
            uint256(sub_739d8df9[idx]) = 0
            idx = idx + 1
            continue 
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    mem[160] = arg3
    if arg3 == arg2:
        mem[288 len 0] = None
        return 0, 64, 2, mem[288 len 64]
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        return 0, 64, 2, 0, mem[292 len 60]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _38 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _44 = mem[_38 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_38 + 192])] = mem[_38 + 224 len floor32(mem[_38 + 192])]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _44) + ceil32(return_data.size) + 224] = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _44) + ceil32(return_data.size) + 320 len 0] = None
    return mem[(32 * _44) + ceil32(return_data.size) + 224], 
           Array(len=2, data=mem[(32 * _44) + ceil32(return_data.size) + 320 len 64])
}

function sub_e11c762f(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length < 2:
        revert with 0, 'YakAdapter::swap - invalid path'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[4]:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _14 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _21 = mem[_14 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_14 + 96])] = mem[_14 + 128 len floor32(mem[_14 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _21) + ceil32(return_data.size) + 238 len 22]
    else:
        require 0 < ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'YakAdapter::_approveIfNeeded'
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _24 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _29 = mem[_24 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_24 + 96])] = mem[_24 + 128 len floor32(mem[_24 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _29) + ceil32(return_data.size) + 238 len 22]
    ('gt', ('ext_call.return_data', 0, 32), ('cd', 68))
    if address(cd[100]) != this.address:
        if not address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(cd[100]) with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[100]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'YakAdapter::_return, token'
}

function sub_0836cb55(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length - 1 < ('cd', 36).length
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5859616b416461707465723a3a73776170202d206d75737420656e64207769746820415641,
                    mem[201 len 27]
    if ('cd', 36).length < 2:
        revert with 0, 'YakAdapter::swap - invalid path'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[4]:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _19 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _26 = mem[_19 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_19 + 96])] = mem[_19 + 128 len floor32(mem[_19 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _26) + ceil32(return_data.size) + 238 len 22]
    else:
        require 0 < ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'YakAdapter::_approveIfNeeded'
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _29 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _34 = mem[_29 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_29 + 96])] = mem[_29 + 128 len floor32(mem[_29 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _34) + ceil32(return_data.size) + 238 len 22]
    ('gt', ('ext_call.return_data', 0, 32), ('cd', 68))
    if this.address != msg.sender:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function sub_484334b4(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length < 2:
        revert with 0, 'YakAdapter::swap - invalid path'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[4]:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _17 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _24 = mem[_17 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_17 + 96])] = mem[_17 + 128 len floor32(mem[_17 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _24) + ceil32(return_data.size) + 238 len 22]
    else:
        require 0 < ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'YakAdapter::_approveIfNeeded'
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[68]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 36).length
        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[4]), cd[68], 160, this.address, block.timestamp, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _27 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        _32 = mem[_27 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_27 + 96])] = mem[_27 + 128 len floor32(mem[_27 + 96])]
        require ('cd', 36).length - 1 < ('cd', 36).length
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[68]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _32) + ceil32(return_data.size) + 238 len 22]
    ('gt', ('ext_call.return_data', 0, 32), ('cd', 68))
    if this.address != msg.sender:
        if not address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'YakAdapter::_return, token'
}

function sub_aeb93574(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length
    if address(('cd', 4)[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7459616b416461707465723a3a73776170202d20206d757374207374617274207769746820415641,
                    mem[204 len 24]
    if ('cd', 4).length < 2:
        revert with 0, 'YakAdapter::swap - invalid path'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= msg.value:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.value
        mem[132] = cd[36]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 4).length
        mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.value), cd[36], 160, this.address, block.timestamp, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _18 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
        _25 = mem[_18 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_18 + 96])] = mem[_18 + 128 len floor32(mem[_18 + 96])]
        require ('cd', 4).length - 1 < ('cd', 4).length
        require ext_code.size(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
        staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[36]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _25) + ceil32(return_data.size) + 238 len 22]
    else:
        require 0 < ('cd', 4).length
        require ext_code.size(address(('cd', 4)[0]))
        call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'YakAdapter::_approveIfNeeded'
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.value
        mem[132] = cd[36]
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = ('cd', 4).length
        mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 292] = 0
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.value), cd[36], 160, this.address, block.timestamp, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _28 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
        _33 = mem[_28 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_28 + 96])] = mem[_28 + 128 len floor32(mem[_28 + 96])]
        require ('cd', 4).length - 1 < ('cd', 4).length
        require ext_code.size(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
        staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cd[36]:
            revert with 0, 
                        32,
                        42,
                        0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                        mem[(32 * _33) + ceil32(return_data.size) + 238 len 22]
    ('gt', ('ext_call.return_data', 0, 32), ('cd', 36))
    if this.address != msg.sender:
        if not address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
            call address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'YakAdapter::_return, token'
}



}
