contract main {




// =====================  Runtime code  =====================


const sub_004fbf6b(?) = 100

const sub_3d6aa5e1(?) = 10^12


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
array of struct admins;
mapping of uint8 stor152;
address tokenAddress;
uint256 sub_75f0fab8;
mapping of uint256 pools;
array of struct sub_4d41639e;
array of address stor24104238192154634397086764757107460916121686968778083312312813627901926985721;

function admins(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < admins.length
    return admins[arg1].field_0
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor152[arg1])
}

function sub_4d41639e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4d41639e.length
    return sub_4d41639e[arg1].field_0, sub_4d41639e[arg1].field_256, sub_4d41639e[arg1].field_512
}

function paused() payable {
    return bool(paused)
}

function sub_75f0fab8(?) payable {
    return sub_75f0fab8
}

function owner() payable {
    return owner
}

function pools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pools[arg1]
}

function token() payable {
    return tokenAddress
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

function transferTokenOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor152[msg.sender]:
        revert with 0, 'Only admin can call.'
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MintTokens(arg1, arg2);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor152[msg.sender]:
        revert with 0, 'Only admin can call.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdminUpgradeable::addAdmin: Admin must be != than 0x0 address'
    if stor152[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AdminUpgradeable::addAdmin: Admin already exists.'
    admins.length++
    stor354A[stor151.length] = arg1
    stor152[address(arg1)] = 1
}

function setPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_75f0fab8 < pools[address(arg1)]:
        revert with 0, 17
    if sub_75f0fab8 - pools[address(arg1)] > !arg2:
        revert with 0, 17
    sub_75f0fab8 = sub_75f0fab8 - pools[address(arg1)] + arg2
    if 100 < sub_75f0fab8 - pools[address(arg1)] + arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DistributionV2::setPool: allowed allocation exceeded'
    pools[address(arg1)] = arg2
}

function getAllAdmins() payable {
    mem[64] = (32 * admins.length) + 128
    mem[96] = admins.length
    if not admins.length:
        mem[(32 * admins.length) + 128] = 32
        mem[(32 * admins.length) + 160] = admins.length
        idx = 0
        s = (32 * admins.length) + 192
        t = 128
        while idx < admins.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * admins.length) + 128
           len (96 * admins.length) + 64
    mem[128] = address(admins.field_0)
    idx = 128
    s = 0
    while (32 * admins.length) + 96 > idx:
        mem[idx + 32] = admins[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * admins.length) + 128] = 32
    mem[(32 * admins.length) + 160] = admins.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < admins.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * admins.length) + -mem[64] + 192
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor152[msg.sender]:
        revert with 0, 'Only admin can call.'
    require stor152[address(arg1)]
    if 1 >= admins.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdminUpgradeable::removeAdmin: Can not remove all admins since contract becomes unusable'
    if var19001 >= admins.length:
        revert with 0, 50
    if admins[var21001].field_0 != arg1:
        idx = var21004
        while idx != admins.length:
            if idx == -1:
                revert with 0, 17
            if idx + 1 >= admins.length:
                revert with 0, 50
            mem[0] = 151
            if admins[idx].field_256 != arg1:
                idx = idx + 1
                continue 
            if admins.length < 1:
                revert with 0, 17
            if admins.length - 1 >= admins.length:
                revert with 0, 50
            if idx + 1 >= admins.length:
                revert with 0, 50
            admins[idx].field_256 = admins[admins.length].field_0
            stor152[address(arg1)] = 0
            if not admins.length:
                revert with 0, 49
            admins[admins.length].field_0 = 0
            admins.length--
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdminUpgradeable::removeAdmin: Passed admin address does not exist'
    if admins.length < 1:
        revert with 0, 17
    if admins.length - 1 >= admins.length:
        revert with 0, 50
    if var21004 >= admins.length:
        revert with 0, 50
    admins[var21004].field_0 = admins[admins.length].field_0
    stor152[address(arg1)] = 0
    if not admins.length:
        revert with 0, 49
    admins[admins.length].field_0 = 0
    admins.length--
}

function sub_49f1d1a4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    admins.length++
    stor354A[stor151.length] = msg.sender
    stor152[address(msg.sender)] = 1
    tokenAddress = address(cd[4])
    if ('cd', 36).length <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DistributionV2::initialize: There must be at least 2 reward emissions'
    idx = 0
    while idx < ('cd', 36).length:
        if cd[((96 * idx) + cd[36] + 36)] >= cd[((96 * idx) + cd[36] + 68)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'DistributionV2::initialize: start must be less than end timestamp'
        if ('cd', 36).length < 1:
            revert with 0, 17
        if idx != ('cd', 36).length - 1:
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if 1 > !cd[((96 * idx) + cd[36] + 68)]:
                revert with 0, 17
            if cd[((96 * idx) + cd[36] + 68)] + 1 != cd[((96 * idx) + cd[36] + 132)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'DistributionV2::initialize: first end reward emission must be on 1 point less than the next start emission'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        sub_4d41639e.length++
        mem[0] = 205
        sub_4d41639e[sub_4d41639e.length].field_0 = cd[((96 * idx) + cd[36] + 36)]
        sub_4d41639e[sub_4d41639e.length].field_256 = cd[((96 * idx) + cd[36] + 68)]
        sub_4d41639e[sub_4d41639e.length].field_512 = cd[((96 * idx) + cd[36] + 100)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_170ce579(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DistributionV2::countRewardAmount: start must be less than end'
    if 0 >= sub_4d41639e.length:
        revert with 0, 50
    if 0 >= sub_4d41639e.length:
        revert with 0, 50
    if arg1 >= uint256(sub_4d41639e.field_0):
        if arg1 < uint256(sub_4d41639e.field_0):
            if 0 >= sub_4d41639e.length:
                revert with 0, 50
            if arg2 < uint256(sub_4d41639e.field_0):
                return 0
        if sub_4d41639e.length < 1:
            revert with 0, 17
        if sub_4d41639e.length - 1 >= sub_4d41639e.length:
            revert with 0, 50
        if sub_4d41639e[sub_4d41639e.length].field_0 < arg1:
            return 0
        idx = 0
        s = 0
        t = 0
        while idx < sub_4d41639e.length:
            if idx >= sub_4d41639e.length:
                revert with 0, 50
            if arg1 >= sub_4d41639e[idx].field_0:
                if arg1 <= sub_4d41639e[idx].field_256:
                    if idx >= sub_4d41639e.length:
                        revert with 0, 50
                    if idx >= sub_4d41639e.length:
                        revert with 0, 50
                    if arg2 <= sub_4d41639e[idx].field_256:
                        if arg2 < arg1:
                            revert with 0, 17
                        if arg2 - arg1 and sub_4d41639e[idx].field_512 > -1 / arg2 - arg1:
                            revert with 0, 17
                        if (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 and pools[address(msg.sender)] > -1 / (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12:
                            revert with 0, 17
                        return ((arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)] / 100)
                    mem[0] = 205
                    if sub_4d41639e[idx].field_256 < arg1:
                        revert with 0, 17
                    if sub_4d41639e[idx].field_256 - arg1 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - arg1:
                        revert with 0, 17
                    if t > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    t = t + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12)
                    continue 
            mem[0] = 205
            if arg2 <= sub_4d41639e[idx].field_256:
                if idx >= sub_4d41639e.length:
                    revert with 0, 50
                if arg2 < sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if arg2 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / arg2 - sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if t > !((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                if t + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12) and pools[address(msg.sender)] > -1 / t + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                return ((t * pools[address(msg.sender)]) + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)]) / 100)
            if bool(s) != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= sub_4d41639e.length:
                revert with 0, 50
            mem[0] = 205
            if sub_4d41639e[idx].field_256 < sub_4d41639e[idx].field_0:
                revert with 0, 17
            if sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0:
                revert with 0, 17
            if t > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12)
            continue 
        if t and pools[address(msg.sender)] > -1 / t:
            revert with 0, 17
        return (t * pools[address(msg.sender)] / 100)
    if 0 >= sub_4d41639e.length:
        revert with 0, 50
    if arg1 < uint256(sub_4d41639e.field_0):
        if 0 >= sub_4d41639e.length:
            revert with 0, 50
        if arg2 < uint256(sub_4d41639e.field_0):
            return 0
    if sub_4d41639e.length < 1:
        revert with 0, 17
    if sub_4d41639e.length - 1 >= sub_4d41639e.length:
        revert with 0, 50
    if sub_4d41639e[sub_4d41639e.length].field_0 < arg1:
        return 0
    if arg2 <= uint256(sub_4d41639e.field_0):
        idx = 0
        s = 0
        t = 0
        while idx < sub_4d41639e.length:
            if idx >= sub_4d41639e.length:
                revert with 0, 50
            if arg1 >= sub_4d41639e[idx].field_0:
                if arg1 <= sub_4d41639e[idx].field_256:
                    if idx >= sub_4d41639e.length:
                        revert with 0, 50
                    if idx >= sub_4d41639e.length:
                        revert with 0, 50
                    if arg2 <= sub_4d41639e[idx].field_256:
                        if arg2 < arg1:
                            revert with 0, 17
                        if arg2 - arg1 and sub_4d41639e[idx].field_512 > -1 / arg2 - arg1:
                            revert with 0, 17
                        if (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 and pools[address(msg.sender)] > -1 / (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12:
                            revert with 0, 17
                        return ((arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)] / 100)
                    mem[0] = 205
                    if sub_4d41639e[idx].field_256 < arg1:
                        revert with 0, 17
                    if sub_4d41639e[idx].field_256 - arg1 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - arg1:
                        revert with 0, 17
                    if t > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    t = t + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12)
                    continue 
            mem[0] = 205
            if arg2 <= sub_4d41639e[idx].field_256:
                if idx >= sub_4d41639e.length:
                    revert with 0, 50
                if arg2 < sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if arg2 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / arg2 - sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if t > !((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                if t + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12) and pools[address(msg.sender)] > -1 / t + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                return ((t * pools[address(msg.sender)]) + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)]) / 100)
            if bool(s) != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= sub_4d41639e.length:
                revert with 0, 50
            mem[0] = 205
            if sub_4d41639e[idx].field_256 < sub_4d41639e[idx].field_0:
                revert with 0, 17
            if sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0:
                revert with 0, 17
            if t > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12)
            continue 
        if t and pools[address(msg.sender)] > -1 / t:
            revert with 0, 17
        return (t * pools[address(msg.sender)] / 100)
    idx = 0
    s = 0
    while idx < sub_4d41639e.length:
        if idx >= sub_4d41639e.length:
            revert with 0, 50
        if idx >= sub_4d41639e.length:
            revert with 0, 50
        if arg1 < sub_4d41639e[idx].field_0:
            if arg2 <= sub_4d41639e[idx].field_256:
                if arg2 < sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if arg2 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / arg2 - sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if s > !((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                if s + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12) and pools[address(msg.sender)] > -1 / s + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                return ((s * pools[address(msg.sender)]) + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)]) / 100)
            mem[0] = 205
            if sub_4d41639e[idx].field_256 < sub_4d41639e[idx].field_0:
                revert with 0, 17
            if sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0:
                revert with 0, 17
            if s > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12)
            continue 
        if idx >= sub_4d41639e.length:
            revert with 0, 50
        if arg1 > sub_4d41639e[idx].field_256:
            if arg2 <= sub_4d41639e[idx].field_256:
                if arg2 < sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if arg2 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / arg2 - sub_4d41639e[idx].field_0:
                    revert with 0, 17
                if s > !((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                if s + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12) and pools[address(msg.sender)] > -1 / s + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                    revert with 0, 17
                return ((s * pools[address(msg.sender)]) + ((arg2 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)]) / 100)
            mem[0] = 205
            if sub_4d41639e[idx].field_256 < sub_4d41639e[idx].field_0:
                revert with 0, 17
            if sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - sub_4d41639e[idx].field_0:
                revert with 0, 17
            if s > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (sub_4d41639e[idx].field_0 * sub_4d41639e[idx].field_512) / 10^12)
            continue 
        if arg2 <= sub_4d41639e[idx].field_256:
            if arg2 < arg1:
                revert with 0, 17
            if arg2 - arg1 and sub_4d41639e[idx].field_512 > -1 / arg2 - arg1:
                revert with 0, 17
            if (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 and pools[address(msg.sender)] > -1 / (arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12:
                revert with 0, 17
            return ((arg2 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12 * pools[address(msg.sender)] / 100)
        mem[0] = 205
        if sub_4d41639e[idx].field_256 < arg1:
            revert with 0, 17
        if sub_4d41639e[idx].field_256 - arg1 and sub_4d41639e[idx].field_512 > -1 / sub_4d41639e[idx].field_256 - arg1:
            revert with 0, 17
        if s > !((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((sub_4d41639e[idx].field_256 * sub_4d41639e[idx].field_512) - (arg1 * sub_4d41639e[idx].field_512) / 10^12)
        continue 
    if s and pools[address(msg.sender)] > -1 / s:
        revert with 0, 17
    return (s * pools[address(msg.sender)] / 100)
}



}
