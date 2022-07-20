contract main {




// =====================  Runtime code  =====================


#
#  - swap()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address vaultAddress;
mapping of uint8 stor102;

function owner() payable {
    return owner
}

function vault() payable {
    return vaultAddress
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor102[arg1])
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)] = 1
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)] = 0
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

function sub_ab270456(?) payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.optionState() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xd5f26382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[44 len 20], ext_call.return_data[0]
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        vaultAddress = arg1
        stor102[address(arg2)] = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            vaultAddress = arg1
            stor102[address(arg2)] = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                vaultAddress = arg1
                stor102[address(arg2)] = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    vaultAddress = arg1
                    stor102[address(arg2)] = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        vaultAddress = arg1
                        stor102[address(arg2)] = 1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        vaultAddress = arg1
                        stor102[address(arg2)] = 1
                        uint8(stor0.field_8) = 0
}

function getAmounts() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x4de91a63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xd5f26382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0, ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.optionState() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(ext_call.return_data[44 len 20])
    staticcall ext_call.return_data[44 len 20].decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultParams() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((7 * ceil32(return_data.size)) + 384 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[153 len 7]
    require ext_call.return_data[160] == ext_call.return_data[179 len 13]
    require ext_code.size(ext_call.return_data[76 len 20])
    staticcall ext_call.return_data[76 len 20].decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args vaultAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args vaultAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args vaultAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not uint8(ext_call.return_data[0]):
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000, ext_call.return_data[0]
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10000,
                   ext_call.return_data[0]
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 0, 17
        return ext_call.return_data[0], ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10000, ext_call.return_data[0]
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10000 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0]
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return ext_call.return_data[0], 
                   ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10000 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[0]
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return ext_call.return_data[0], 
               ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10000 / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[0]
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000 / s * t, ext_call.return_data[0]
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if ext_call.return_data[0] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return ext_call.return_data[0], 
               ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10000 / s * t,
               ext_call.return_data[0]
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * u * v and ext_call.return_data[0] > -1 / ext_call.return_data[0] * u * v:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return ext_call.return_data[0], 
           ext_call.return_data[0] * u * v * ext_call.return_data[0] / 10000 / s * t,
           ext_call.return_data[0]
}



}
