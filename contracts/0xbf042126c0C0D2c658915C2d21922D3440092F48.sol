contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address routerAddress;
array of address sub_739d8df9;
mapping of uint8 stor4;

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

function TOKENS_MAP(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
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

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[288 len 0] = None
        return 0, 64, 2, mem[288 len 64]
    if not arg1:
        mem[288 len 0] = None
        return 0, 64, 2, mem[288 len 64]
    if not stor4[address(arg2)]:
        mem[288 len 0] = None
        return 0, 64, 2, mem[288 len 64]
    if not stor4[address(arg3)]:
        mem[288 len 0] = None
        return 0, 64, 2, mem[288 len 64]
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], Array(len=2, data=uint32(arg1), mem[292 len 60])
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
    staticcall address(('cd', 36)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[4]:
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
    require ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    call routerAddress.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, cd[4], cd[68], block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length - 1 < ('cd', 36).length
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                    Mask(176, 0, cd[68])
    if address(cd[100]) != this.address:
        if not address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(cd[100]) with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xa9059cbb with:
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
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[4]:
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
    require ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    call routerAddress.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, cd[4], cd[68], block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length - 1 < ('cd', 36).length
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                    Mask(176, 0, cd[68])
    if this.address != msg.sender:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
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
    call address(('cd', 36)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[4]:
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
    require ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ('cd', 36).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 36)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    call routerAddress.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, cd[4], cd[68], block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length - 1 < ('cd', 36).length
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                    Mask(176, 0, cd[68])
    if this.address != msg.sender:
        if not address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xa9059cbb with:
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
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < msg.value:
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
    require ('cd', 4).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 4)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ('cd', 4).length
    require ext_code.size(routerAddress)
    staticcall routerAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(('cd', 4)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    call routerAddress.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[0] << 248, msg.value, cd[36], block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 4).length - 1 < ('cd', 4).length
    require ext_code.size(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[36]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7359616b416461707465723a3a73776170202d20496e73756666696369656e74206f757420616d6f756e,
                    Mask(176, 0, cd[36])
    if this.address != msg.sender:
        if not address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]):
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
            call address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'YakAdapter::_return, token'
}



}
