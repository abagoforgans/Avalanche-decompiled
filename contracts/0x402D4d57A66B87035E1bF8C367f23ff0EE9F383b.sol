contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address adminAddress;
address whiteListContractAddress;
mapping of uint8 stor3;
mapping of uint256 stor4;

function whiteListContract() {
    return whiteListContractAddress
}

function owner() {
    return owner
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function emergencyPause() {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'denied'
    adminAddress = 0
    emit 0x5c975abb 
}

function ChangeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
    emit adminChanged(arg1);
}

function ChangeWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whiteListContractAddress = arg1
    emit whiteListChanged(arg1);
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_160):
        revert with 0, 'Already Initialized'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    adminAddress = arg2
    Mask(96, 0, stor0.field_160) = 1
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

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function checkWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not whiteListContractAddress:
        return bool(stor3[address(arg1)])
    require ext_code.size(whiteListContractAddress)
    staticcall whiteListContractAddress.isWhiteListed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function addLocalWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
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
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeLocalWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
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
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeSignature(bytes4[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == Mask(32, 224, cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = Mask(32, 224, mem[(32 * idx) + 128])
        mem[32] = 4
        stor4[Mask(32, 224, mem[(32 * idx) + 128])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function addSignature(bytes4[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == Mask(32, 224, cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = Mask(32, 224, mem[(32 * idx) + 128])
        mem[32] = 4
        stor4[Mask(32, 224, mem[(32 * idx) + 128])] = mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function callAgent(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'denied'
    if not arg2:
        require 4 <= arg3.length
        if stor4[call.data[arg3 + 36 len 4] << 224] > 0:
            if stor4[call.data[arg3 + 36 len 4] << 224] > -33:
                revert with 'NH{q', 17
            require stor4[call.data[arg3 + 36 len 4] << 224] <= stor4[call.data[arg3 + 36 len 4] << 224] + 32
            require stor4[call.data[arg3 + 36 len 4] << 224] + 32 <= arg3.length
            if not whiteListContractAddress:
                if not stor3[address(call.data[arg3 + stor4[call.data[arg3 + 36 len 4] << 224] + 36])]:
                    revert with 0, 'no whitelist'
            else:
                require ext_code.size(whiteListContractAddress)
                staticcall whiteListContractAddress.isWhiteListed(address arg1) with:
                        gas gas_remaining wei
                       args address(call.data[arg3 + stor4[call.data[arg3 + 36 len 4] << 224] + 36])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'no whitelist'
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not return_data.size:
            return bool(ext_call.success), 64, 4, Mask(32, 224, call.data[arg3 + 36 len 4], 0) >> 224, 0
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not whiteListContractAddress:
        if not stor3[address(arg1)]:
            revert with 0, 'no whitelist'
        mem[96 len arg3.length] = arg3[all]
        mem[arg3.length + 96] = 0
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if return_data.size:
            return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[96] = bool(ext_call.success)
        mem[128] = 64
        mem[160] = bool(ext_call.success)
        mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
        if ceil32(bool(ext_call.success)) > bool(ext_call.success):
            mem[bool(ext_call.success) + 192] = 0
        return memory
          from 96
           len ceil32(bool(ext_call.success)) + 96
    mem[100] = arg1
    require ext_code.size(whiteListContractAddress)
    staticcall whiteListContractAddress.isWhiteListed(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'no whitelist'
    mem[ceil32(return_data.size) + 96 len arg3.length] = arg3[all]
    mem[ceil32(return_data.size) + arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + 96] = bool(ext_call.success)
    mem[ceil32(return_data.size) + 128] = 64
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
    if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
        mem[ceil32(return_data.size) + ext_call.return_data[0] + 192] = 0
    return bool(ext_call.success), 
           Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 192 len ceil32(ext_call.return_data[0])])
}



}
