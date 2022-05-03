contract main {




// =====================  Runtime code  =====================


uint16 version; offset 160
address owner;
uint256 sub_5f461e84;
uint256 sub_37ac380a;
uint256 sub_0c8af9d5;
uint256 sub_7af4ee97;
array of uint256 sub_e3fb533e;
array of uint8 sub_6483e7c9;
array of uint8 sub_12ab3436;
array of uint8 sub_38cb29c7;
array of uint8 sub_d17bcd78;
array of uint8 sub_e1b34907;
array of uint8 sub_addec8fa;
array of uint8 sub_eead5c9e;
array of uint8 sub_91bfeb82;
array of uint8 sub_5d1d9c63;
array of uint8 sub_15db3963;
array of uint8 sub_cafa5349;

function sub_0c8af9d5(?) payable {
    return sub_0c8af9d5
}

function sub_12ab3436(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_12ab3436[uint8(arg1)])
}

function sub_15db3963(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_15db3963[uint8(arg1)])
}

function sub_37ac380a(?) payable {
    return sub_37ac380a
}

function sub_38cb29c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_38cb29c7[uint8(arg1)])
}

function version() payable {
    return version
}

function sub_5d1d9c63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_5d1d9c63[uint8(arg1)])
}

function sub_5f461e84(?) payable {
    return sub_5f461e84
}

function sub_6483e7c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_6483e7c9[uint8(arg1)])
}

function sub_7af4ee97(?) payable {
    return sub_7af4ee97
}

function owner() payable {
    return owner
}

function sub_91bfeb82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_91bfeb82[uint8(arg1)])
}

function sub_addec8fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_addec8fa[uint8(arg1)])
}

function sub_cafa5349(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_cafa5349[uint8(arg1)])
}

function sub_d17bcd78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_d17bcd78[uint8(arg1)])
}

function sub_e1b34907(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_e1b34907[uint8(arg1)])
}

function sub_e3fb533e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 7
    return sub_e3fb533e[arg1]
}

function sub_eead5c9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint8(sub_eead5c9e[uint8(arg1)])
}

function _fallback() payable {
    revert
}

function sub_9e0eb60f(?) payable {
    require calldata.size - 4 >= 32
    return 0
}

function sub_0627e598(?) payable {
    require calldata.size - 4 >= 32
    revert with 0, 17
}

function sub_4422fb42(?) payable {
    require calldata.size - 4 >= 32
    return 0, 0, arg1
}

function sub_9c8a1e2e(?) payable {
    require calldata.size - 4 >= 32
    revert with 0, 17
}

function extractType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function extractReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function sub_3453e0ed(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_46bd3687(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_e2d9d014(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_f994901b(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_ff2bc761(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_5328c671(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1 << 248, arg1 << 248, arg1, 0, 0
}

function getStats(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'GAMESTAT:INVALID DNA'
    revert with 0, 17
}

function sub_50f204dc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    return uint8(arg1), uint8(arg2), 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_11e96cd5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    version = uint16(arg1)
}

function sub_dbd6685a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3)
}

function sub_49d256fc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_5a7112c1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_879529c0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_d053371a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_ddcdcc0c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_c62884d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_fd8022eb(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    return 0, uint8(arg1), uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg4), uint8(arg5), 0
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

function sub_7457b065(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if uint8(arg3) and sub_7af4ee97 > -1 / uint8(arg3):
        revert with 0, 17
    if uint8(arg2) and sub_0c8af9d5 > -1 / uint8(arg2):
        revert with 0, 17
    if uint8(arg2) * sub_0c8af9d5 > !(uint8(arg3) * sub_7af4ee97):
        revert with 0, 17
    if (uint8(arg2) * sub_0c8af9d5) + (uint8(arg3) * sub_7af4ee97) > -10001:
        revert with 0, 17
    if uint8(arg1) and (uint8(arg2) * sub_0c8af9d5) + (uint8(arg3) * sub_7af4ee97) + 10000 > -1 / uint8(arg1):
        revert with 0, 17
    return uint8((10000 * uint8(arg1)) + (uint8(arg2) * sub_0c8af9d5 * uint8(arg1)) + (uint8(arg3) * sub_7af4ee97 * uint8(arg1)) / 10000)
}

function sub_07eed838(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_12ab3436[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_12ab3436[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_59385f2f(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_6483e7c9[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_6483e7c9[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6990fc6f(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_e1b34907[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_e1b34907[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7b975311(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_38cb29c7[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_38cb29c7[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8006f670(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_cafa5349[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_cafa5349[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9313c042(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_eead5c9e[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_eead5c9e[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_afef1e17(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_d17bcd78[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_d17bcd78[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b63c303d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_5d1d9c63[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_5d1d9c63[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_dff414d5(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_91bfeb82[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_91bfeb82[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e9a38c8d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_addec8fa[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_addec8fa[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ed3fa1eb(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[4] > !idx:
            revert with 0, 17
        if cd[4] + idx >= 256:
            revert with 0, 50
        uint256(sub_15db3963[0.03125 / cd[4] + idx]) = mem[(32 * idx) + 159 len 1] * 256^(cd[4] + idx % 32) or !(255 * 256^(cd[4] + idx % 32)) and uint256(sub_15db3963[0.03125 / cd[4] + idx])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
