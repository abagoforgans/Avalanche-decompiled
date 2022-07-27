contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e118294(?)
#  - buy_quantity(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5)
#  - sub_fb1578c6(?)
#  - _fallback()
#
address stor0;
address owner;
address administratorAddress;
address routerAddress;
address factoryAddress;
address chiTokenAddress;
mapping of uint8 stor6;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
uint8 stor16; offset 160
address stor16;

function chiToken() {
    return chiTokenAddress
}

function owner() {
    return owner
}

function factory() {
    return factoryAddress
}

function administrator() {
    return administratorAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function getConfig() {
    if not stor6[address(msg.sender)]:
        revert with 0, '!Auth'
    return routerAddress, factoryAddress, administratorAddress, owner, stor0
}

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a2c1bab(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!Owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_907ab008(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!Owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function setConfig(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor6[msg.sender]:
        revert with 0, '!Auth'
    routerAddress = arg1
    factoryAddress = arg2
    chiTokenAddress = arg3
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_0d589bf3(?) {
    require calldata.size - 4 >= 192
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if not stor6[msg.sender]:
        revert with 0, '!Auth'
    stor14 = arg1
    stor11 = arg2
    stor12 = arg3
    stor13 = arg4
    stor15 = address(arg5)
    address(stor16.field_0) = address(arg6)
    if stor0 == address(arg5):
        revert with 0, 'Dont buy WBNB with WBNB!'
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor16.field_160) = 0
    return 1
}

function sub_83f02a29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor6[msg.sender]:
        revert with 0, '!Auth'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'No tokens'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor0 != address(arg1):
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args administratorAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call administratorAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    return 1
}

function disperseEther(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307() or ceil32(32 * arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not stor6[msg.sender]:
        revert with 0, '!Auth'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + ceil32(32 * arg1.length) + 129] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
