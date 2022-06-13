contract main {




// =====================  Runtime code  =====================


const sub_674bcebe(?) = 0xdf974829f6d977370b21e065ae445390cb9d010c

const sub_ea64e592(?) = 0x23027146bb7bb8b028b849b14f4d4968c2025c04


address owner;
mapping of uint8 stor1;

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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

function getAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    require ext_code.size(0xdf974829f6d977370b21e065ae445390cb9d010c)
    staticcall 0xdf974829f6d977370b21e065ae445390cb9d010c._isBlacklisted(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    if stor1[address(arg1)]:
        return 0
    require ext_code.size(0x23027146bb7bb8b028b849b14f4d4968c2025c04)
    staticcall 0x23027146bb7bb8b028b849b14f4d4968c2025c04._getNodeValueOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^18)
}

function sub_ffcf4c57(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length > 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
