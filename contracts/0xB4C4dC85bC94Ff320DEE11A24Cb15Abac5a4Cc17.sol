contract main {




// =====================  Runtime code  =====================


#
#  - sub_90a2956d(?)
#
const REVISION = 205


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor51;
address owner;
address stor361;
address stor362;
address stor363;
address stor364;
mapping of address pair;
mapping of uint8 stor366;
array of struct stor367;
mapping of uint256 stor368;
mapping of address sub_4dad2624;
array of struct stor421;
mapping of uint256 stor422;
mapping of address sub_2c11db0c;
mapping of address sub_870bd025;
array of struct stor426;
mapping of uint256 stor427;
address sub_e0687225Address;
address sub_374b17caAddress;

function sub_2c11db0c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_2c11db0c[address(arg1)][address(arg2)]
}

function sub_2fb03d01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor427[address(arg1)])
}

function sub_374b17ca(?) payable {
    return sub_374b17caAddress
}

function sub_4dad2624(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return sub_4dad2624[address(arg1)][address(arg2)][address(arg3)]
}

function sub_870bd025(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return sub_870bd025[address(arg1)][address(arg2)][address(arg3)]
}

function owner() payable {
    return owner
}

function sub_e0687225(?) payable {
    return sub_e0687225Address
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor366[address(arg1)])
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return pair[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6b262edc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    sub_e0687225Address = address(arg1)
}

function sub_9a984d6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    sub_374b17caAddress = address(arg1)
}

function registerTradable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    if stor368[address(arg1)]:
        revert with 0, '', 0
    stor367.length++
    stor367[stor367.length].field_0 = arg1
    stor367[stor367.length].field_160 = 0
    stor368[address(arg1)] = stor367.length
}

function sub_64a2fea9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    if stor427[address(arg1)]:
        revert with 0, '', 0
    stor426.length++
    stor426[stor426.length].field_0 = address(arg1)
    stor426[stor426.length].field_160 = 0
    stor427[address(arg1)] = stor426.length
}

function sub_bc6b312f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    if stor422[address(arg1)]:
        revert with 0, '', 0
    stor421.length++
    stor421[stor421.length].field_0 = address(arg1)
    stor421[stor421.length].field_160 = 0
    stor422[address(arg1)] = stor421.length
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[12556 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_51394094(?) payable {
    if stor426.length:
        mem[128] = uint256(stor426.field_0)
        idx = 128
        s = 0
        while (32 * stor426.length) + 96 > idx:
            mem[idx + 32] = stor426[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor426.length, data=mem[128 len 32 * stor426.length])
    mem[(32 * stor426.length) + 128] = 32
    mem[(32 * stor426.length) + 160] = stor426.length
    mem[(32 * stor426.length) + 192 len 32 * stor426.length] = mem[128 len 32 * stor426.length]
    return memory
      from (32 * stor426.length) + 128
       len (96 * stor426.length) + 64
}

function sub_96eaa53d(?) payable {
    if stor421.length:
        mem[128] = uint256(stor421.field_0)
        if (32 * stor421.length) + 32 > 64:
            mem[160] = uint256(stor421.field_256)
            idx = 160
            s = 1
            while (32 * stor421.length) + 96 > idx:
                mem[idx + 32] = stor421[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor421.length) + 128] = 32
    mem[(32 * stor421.length) + 160] = stor421.length
    mem[(32 * stor421.length) + 192 len 32 * stor421.length] = mem[128 len 32 * stor421.length]
    return memory
      from (32 * stor421.length) + 128
       len (96 * stor421.length) + 64
}

function getAllTradables() payable {
    if stor367.length:
        mem[128] = uint256(stor367.field_0)
        if (32 * stor367.length) + 32 > 64:
            mem[160] = uint256(stor367.field_256)
            idx = 160
            s = 1
            while (32 * stor367.length) + 96 > idx:
                mem[idx + 32] = stor367[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor367.length) + 128] = 32
    mem[(32 * stor367.length) + 160] = stor367.length
    mem[(32 * stor367.length) + 192 len 32 * stor367.length] = mem[128 len 32 * stor367.length]
    return memory
      from (32 * stor367.length) + 128
       len (96 * stor367.length) + 64
}

function sub_2878e3f0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 368
        if not stor368[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor367.length++
            stor367[stor367.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor367[stor367.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 368
            stor368[address(cd[((32 * idx) + cd[4] + 36)])] = stor367.length
        idx = idx + 1
        continue 
}

function sub_450626ea(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 427
        if not stor427[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor426.length++
            stor426[stor426.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor426[stor426.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 427
            stor427[address(cd[((32 * idx) + cd[4] + 36)])] = stor426.length
        idx = idx + 1
        continue 
}

function sub_f85db189(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[12640 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 422
        if not stor422[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor421.length++
            stor421[stor421.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor421[stor421.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 422
            stor422[address(cd[((32 * idx) + cd[4] + 36)])] = stor421.length
        idx = idx + 1
        continue 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12594 len 46], mem[210 len 18]
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
    if 205 <= stor51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[12716 len 40], mem[204 len 24]
    stor51 = 205
    if uint8(stor0.field_8):
        stor361 = arg1
        stor362 = arg2
        stor363 = arg6
        stor364 = arg5
        sub_e0687225Address = arg3
        sub_374b17caAddress = arg4
    else:
        uint8(stor0.field_8) = 0
        stor361 = arg1
        stor362 = arg2
        stor363 = arg6
        stor364 = arg5
        sub_e0687225Address = arg3
        sub_374b17caAddress = arg4
        uint8(stor0.field_8) = 0
}

function sub_ef6f8cba(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 2
    mem[128] = 0x4e54000000000000000000000000000000000000000000000000000000000000
    if not stor368[address(arg3)]:
        revert with 0, '', 0
    mem[160] = 2
    mem[192] = 0x4e4c000000000000000000000000000000000000000000000000000000000000
    if not stor422[address(arg2)]:
        revert with 0, '', 0
    mem[224] = 3
    mem[320] = address(arg3)
    mem[288] = address(arg2)
    mem[256] = address(arg1)
    mem[0] = address(arg3)
    mem[32] = sha3(address(arg2), sha3(address(arg1), 420))
    if sub_4dad2624[address(arg1)][address(arg2)][address(arg3)]:
        require ext_code.size(sub_4dad2624[address(arg1)][address(arg2)][address(arg3)])
        staticcall sub_4dad2624[address(arg1)][address(arg2)][address(arg3)].0x5c60da1b with:
                gas gas_remaining wei
        mem[352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
        if not ext_call.success:
            require ext_code.size(sub_4dad2624[address(arg1)][address(arg2)][address(arg3)])
            call sub_4dad2624[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                 gas gas_remaining wei
                args sub_e0687225Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 352] = 0xe4627e000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 356] = 32
            idx = 0
            s = 256
            t = ceil32(return_data.size) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.0xe4627e0 with:
                 gas gas_remaining wei
                args Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] < 205:
                require ext_code.size(sub_4dad2624[address(arg1)][address(arg2)][address(arg3)])
                call sub_4dad2624[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                     gas gas_remaining wei
                    args sub_e0687225Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 352] = 0xe4627e000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 356] = 32
                idx = 0
                s = 256
                t = (2 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor362)
                call stor362.0xe4627e0 with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return sub_4dad2624[address(arg1)][address(arg2)][address(arg3)]
    mem[384] = address(arg1)
    mem[404] = address(arg2)
    mem[424] = address(arg3)
    mem[352] = 60
    mem[448] = address(arg1)
    require ext_code.size(stor361)
    call stor361.0x5cf3abfe with:
         gas gas_remaining wei
        args address(arg1)
    mem[444] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 448] = 32
    mem[ceil32(return_data.size) + 480] = 3
    idx = 0
    s = 256
    t = ceil32(return_data.size) + 512
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor362)
    call stor362.0xffce24b3 with:
         gas gas_remaining wei
        args Array(len=3, data=mem[ceil32(return_data.size) + 512 len 96])
    mem[ceil32(return_data.size) + 444] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 444] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 444 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _577 = mem[(2 * ceil32(return_data.size)) + 444]
    require mem[(2 * ceil32(return_data.size)) + 444] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 475 < (2 * ceil32(return_data.size)) + return_data.size + 444
    _578 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444] <= test266151307()
    require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 476 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 476
    mem[(4 * ceil32(return_data.size)) + 444] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]
    require return_data.size >= _578 + _577 + 32
    mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_578)] = mem[(2 * ceil32(return_data.size)) + _577 + 476 len ceil32(_578)]
    if ceil32(_578) <= _578:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1068 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1070 = mem[_1068]
        require mem[_1068] <= test266151307()
        require _1068 + mem[_1068] + 31 < _1068 + return_data.size
        _1072 = mem[_1068 + mem[_1068]]
        require mem[_1068 + mem[_1068]] <= test266151307()
        require ceil32(mem[_1068 + mem[_1068]]) + 32 >= 0 and _1068 + ceil32(return_data.size) + ceil32(mem[_1068 + mem[_1068]]) + 32 <= test266151307()
        mem[64] = _1068 + ceil32(return_data.size) + ceil32(mem[_1068 + mem[_1068]]) + 32
        mem[_1068 + ceil32(return_data.size)] = _1072
        require return_data.size >= _1072 + _1070 + 32
        mem[_1068 + ceil32(return_data.size) + 32 len ceil32(_1072)] = mem[_1068 + _1070 + 32 len ceil32(_1072)]
        if ceil32(_1072) <= _1072:
            _1548 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _2020 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_2020)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_2020)]
            if ceil32(_2020) <= _2020:
                mem[mem[64] + 196] = ceil32(_2020) + 352
                _2480 = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2020) + mem[64] + 388] = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2020) + mem[64] + 420 len ceil32(_2480)] = mem[_1068 + ceil32(return_data.size) + 32 len ceil32(_2480)]
                if ceil32(_2480) <= _2480:
                    _2936 = mem[64]
                    mem[mem[64]] = ceil32(_2480) + ceil32(_2020) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2480) + ceil32(_2020) + _1548 + 516
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 420] = 44
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 520] = sub_e0687225Address
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 552] = this.address
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 584] = 96
                    _3048 = mem[_2936]
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 616] = mem[_2936]
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 648 len ceil32(_3048)] = mem[_2936 + 32 len ceil32(_3048)]
                    if ceil32(_3048) > _3048:
                        mem[ceil32(_2480) + ceil32(_2020) + _1548 + _3048 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2480) + ceil32(_2020) + _1548 + 616 len ceil32(_3048) + 32]
                else:
                    mem[ceil32(_2020) + mem[64] + _2480 + 420] = 0
                    _2960 = mem[64]
                    mem[mem[64]] = ceil32(_2480) + ceil32(_2020) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2480) + _2480 + 32, 0, 0), code.data[_2480 + -ceil32(_2480) + 10164 len -_2480 + ceil32(_2480) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2480) + ceil32(_2020) + _1548 + 516
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 420] = 44
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 520] = sub_e0687225Address
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 552] = this.address
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 584] = 96
                    _3064 = mem[_2960]
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 616] = mem[_2960]
                    mem[ceil32(_2480) + ceil32(_2020) + _1548 + 648 len ceil32(_3064)] = mem[_2960 + 32 len ceil32(_3064)]
                    if ceil32(_3064) > _3064:
                        mem[ceil32(_2480) + ceil32(_2020) + _1548 + _3064 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2480) + ceil32(_2020) + _1548 + 616 len ceil32(_3064) + 32]
            else:
                mem[mem[64] + _2020 + 388] = 0
                mem[mem[64] + 196] = ceil32(_2020) + 352
                _2484 = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2020) + mem[64] + 388] = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2020) + mem[64] + 420 len ceil32(_2484)] = mem[_1068 + ceil32(return_data.size) + 32 len ceil32(_2484)]
                if ceil32(_2484) <= _2484:
                    _2939 = mem[64]
                    mem[mem[64]] = ceil32(_2484) + ceil32(_2020) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2484) + ceil32(_2020) + _1548 + 516
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 420] = 44
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 520] = sub_e0687225Address
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 552] = this.address
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 584] = 96
                    _3050 = mem[_2939]
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 616] = mem[_2939]
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 648 len ceil32(_3050)] = mem[_2939 + 32 len ceil32(_3050)]
                    if ceil32(_3050) > _3050:
                        mem[ceil32(_2484) + ceil32(_2020) + _1548 + _3050 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2484) + ceil32(_2020) + _1548 + 616 len ceil32(_3050) + 32]
                else:
                    mem[ceil32(_2020) + mem[64] + _2484 + 420] = 0
                    _2963 = mem[64]
                    mem[mem[64]] = ceil32(_2484) + ceil32(_2020) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2484) + _2484 + 32, 0, 0), code.data[_2484 + -ceil32(_2484) + 10164 len -_2484 + ceil32(_2484) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2484) + ceil32(_2020) + _1548 + 516
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 420] = 44
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 520] = sub_e0687225Address
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 552] = this.address
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 584] = 96
                    _3066 = mem[_2963]
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 616] = mem[_2963]
                    mem[ceil32(_2484) + ceil32(_2020) + _1548 + 648 len ceil32(_3066)] = mem[_2963 + 32 len ceil32(_3066)]
                    if ceil32(_3066) > _3066:
                        mem[ceil32(_2484) + ceil32(_2020) + _1548 + _3066 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2484) + ceil32(_2020) + _1548 + 616 len ceil32(_3066) + 32]
        else:
            mem[_1068 + ceil32(return_data.size) + _1072 + 32] = 0
            _1550 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _2021 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_2021)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_2021)]
            if ceil32(_2021) <= _2021:
                mem[mem[64] + 196] = ceil32(_2021) + 352
                _2481 = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2021) + mem[64] + 388] = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2021) + mem[64] + 420 len ceil32(_2481)] = mem[_1068 + ceil32(return_data.size) + 32 len ceil32(_2481)]
                if ceil32(_2481) <= _2481:
                    _2942 = mem[64]
                    mem[mem[64]] = ceil32(_2481) + ceil32(_2021) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2481) + ceil32(_2021) + _1550 + 516
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 420] = 44
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 520] = sub_e0687225Address
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 552] = this.address
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 584] = 96
                    _3052 = mem[_2942]
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 616] = mem[_2942]
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 648 len ceil32(_3052)] = mem[_2942 + 32 len ceil32(_3052)]
                    if ceil32(_3052) > _3052:
                        mem[ceil32(_2481) + ceil32(_2021) + _1550 + _3052 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2481) + ceil32(_2021) + _1550 + 616 len ceil32(_3052) + 32]
                else:
                    mem[ceil32(_2021) + mem[64] + _2481 + 420] = 0
                    _2966 = mem[64]
                    mem[mem[64]] = ceil32(_2481) + ceil32(_2021) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2481) + _2481 + 32, 0, 0), code.data[_2481 + -ceil32(_2481) + 10164 len -_2481 + ceil32(_2481) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2481) + ceil32(_2021) + _1550 + 516
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 420] = 44
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 520] = sub_e0687225Address
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 552] = this.address
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 584] = 96
                    _3068 = mem[_2966]
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 616] = mem[_2966]
                    mem[ceil32(_2481) + ceil32(_2021) + _1550 + 648 len ceil32(_3068)] = mem[_2966 + 32 len ceil32(_3068)]
                    if ceil32(_3068) > _3068:
                        mem[ceil32(_2481) + ceil32(_2021) + _1550 + _3068 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2481) + ceil32(_2021) + _1550 + 616 len ceil32(_3068) + 32]
            else:
                mem[mem[64] + _2021 + 388] = 0
                mem[mem[64] + 196] = ceil32(_2021) + 352
                _2485 = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2021) + mem[64] + 388] = mem[_1068 + ceil32(return_data.size)]
                mem[ceil32(_2021) + mem[64] + 420 len ceil32(_2485)] = mem[_1068 + ceil32(return_data.size) + 32 len ceil32(_2485)]
                if ceil32(_2485) <= _2485:
                    _2945 = mem[64]
                    mem[mem[64]] = ceil32(_2485) + ceil32(_2021) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2485) + ceil32(_2021) + _1550 + 516
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 420] = 44
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 520] = sub_e0687225Address
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 552] = this.address
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 584] = 96
                    _3054 = mem[_2945]
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 616] = mem[_2945]
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 648 len ceil32(_3054)] = mem[_2945 + 32 len ceil32(_3054)]
                    if ceil32(_3054) > _3054:
                        mem[ceil32(_2485) + ceil32(_2021) + _1550 + _3054 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2485) + ceil32(_2021) + _1550 + 616 len ceil32(_3054) + 32]
                else:
                    mem[ceil32(_2021) + mem[64] + _2485 + 420] = 0
                    _2969 = mem[64]
                    mem[mem[64]] = ceil32(_2485) + ceil32(_2021) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2485) + _2485 + 32, 0, 0), code.data[_2485 + -ceil32(_2485) + 10164 len -_2485 + ceil32(_2485) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2485) + ceil32(_2021) + _1550 + 516
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 420] = 44
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 520] = sub_e0687225Address
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 552] = this.address
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 584] = 96
                    _3070 = mem[_2969]
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 616] = mem[_2969]
                    mem[ceil32(_2485) + ceil32(_2021) + _1550 + 648 len ceil32(_3070)] = mem[_2969 + 32 len ceil32(_3070)]
                    if ceil32(_3070) > _3070:
                        mem[ceil32(_2485) + ceil32(_2021) + _1550 + _3070 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2485) + ceil32(_2021) + _1550 + 616 len ceil32(_3070) + 32]
    else:
        mem[(4 * ceil32(return_data.size)) + _578 + 476] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1069 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1071 = mem[_1069]
        require mem[_1069] <= test266151307()
        require _1069 + mem[_1069] + 31 < _1069 + return_data.size
        _1074 = mem[_1069 + mem[_1069]]
        require mem[_1069 + mem[_1069]] <= test266151307()
        require ceil32(mem[_1069 + mem[_1069]]) + 32 >= 0 and _1069 + ceil32(return_data.size) + ceil32(mem[_1069 + mem[_1069]]) + 32 <= test266151307()
        mem[64] = _1069 + ceil32(return_data.size) + ceil32(mem[_1069 + mem[_1069]]) + 32
        mem[_1069 + ceil32(return_data.size)] = _1074
        require return_data.size >= _1074 + _1071 + 32
        mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_1074)] = mem[_1069 + _1071 + 32 len ceil32(_1074)]
        if ceil32(_1074) <= _1074:
            _1549 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _2022 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_2022)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_2022)]
            if ceil32(_2022) <= _2022:
                mem[mem[64] + 196] = ceil32(_2022) + 352
                _2482 = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2022) + mem[64] + 388] = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2022) + mem[64] + 420 len ceil32(_2482)] = mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_2482)]
                if ceil32(_2482) <= _2482:
                    _2948 = mem[64]
                    mem[mem[64]] = ceil32(_2482) + ceil32(_2022) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2482) + ceil32(_2022) + mem[64] + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2482) + ceil32(_2022) + mem[64] + 516
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 420] = 44
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 520] = sub_e0687225Address
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 552] = this.address
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 584] = 96
                    _3056 = mem[_2948]
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 616] = mem[_2948]
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 648 len ceil32(_3056)] = mem[_2948 + 32 len ceil32(_3056)]
                    if ceil32(_3056) > _3056:
                        mem[ceil32(_2482) + ceil32(_2022) + _1549 + _3056 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2482) + ceil32(_2022) + _1549 + 616 len ceil32(_3056) + 32]
                else:
                    mem[ceil32(_2022) + mem[64] + _2482 + 420] = 0
                    _2972 = mem[64]
                    mem[mem[64]] = ceil32(_2482) + ceil32(_2022) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2482) + ceil32(_2022) + mem[64] + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2482) + ceil32(_2022) + mem[64] + 516
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 420] = 44
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 520] = sub_e0687225Address
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 552] = this.address
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 584] = 96
                    _3072 = mem[_2972]
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 616] = mem[_2972]
                    mem[ceil32(_2482) + ceil32(_2022) + _1549 + 648 len ceil32(_3072)] = mem[_2972 + 32 len ceil32(_3072)]
                    if ceil32(_3072) > _3072:
                        mem[ceil32(_2482) + ceil32(_2022) + _1549 + _3072 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2482) + ceil32(_2022) + _1549 + 616 len ceil32(_3072) + 32]
            else:
                mem[mem[64] + _2022 + 388] = 0
                mem[mem[64] + 196] = ceil32(_2022) + 352
                _2486 = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2022) + mem[64] + 388] = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2022) + mem[64] + 420 len ceil32(_2486)] = mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_2486)]
                if ceil32(_2486) <= _2486:
                    _2951 = mem[64]
                    mem[mem[64]] = ceil32(_2486) + ceil32(_2022) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2486) + ceil32(_2022) + _1549 + 516
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 420] = 44
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 520] = sub_e0687225Address
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 552] = this.address
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 584] = 96
                    _3058 = mem[_2951]
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 616] = mem[_2951]
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 648 len ceil32(_3058)] = mem[_2951 + 32 len ceil32(_3058)]
                    if ceil32(_3058) > _3058:
                        mem[ceil32(_2486) + ceil32(_2022) + _1549 + _3058 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2486) + ceil32(_2022) + _1549 + 616 len ceil32(_3058) + 32]
                else:
                    mem[ceil32(_2022) + mem[64] + _2486 + 420] = 0
                    _2975 = mem[64]
                    mem[mem[64]] = ceil32(_2486) + ceil32(_2022) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2486) + ceil32(_2022) + _1549 + 516
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 420] = 44
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 520] = sub_e0687225Address
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 552] = this.address
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 584] = 96
                    _3074 = mem[_2975]
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 616] = mem[_2975]
                    mem[ceil32(_2486) + ceil32(_2022) + _1549 + 648 len ceil32(_3074)] = mem[_2975 + 32 len ceil32(_3074)]
                    if ceil32(_3074) > _3074:
                        mem[ceil32(_2486) + ceil32(_2022) + _1549 + _3074 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2486) + ceil32(_2022) + _1549 + 616 len ceil32(_3074) + 32]
        else:
            mem[_1069 + ceil32(return_data.size) + _1074 + 32] = 0
            _1551 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _2023 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_2023)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_2023)]
            if ceil32(_2023) <= _2023:
                mem[mem[64] + 196] = ceil32(_2023) + 352
                _2483 = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2023) + mem[64] + 388] = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2023) + mem[64] + 420 len ceil32(_2483)] = mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_2483)]
                if ceil32(_2483) <= _2483:
                    _2954 = mem[64]
                    mem[mem[64]] = ceil32(_2483) + ceil32(_2023) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2483) + ceil32(_2023) + _1551 + 516
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 420] = 44
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 520] = sub_e0687225Address
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 552] = this.address
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 584] = 96
                    _3060 = mem[_2954]
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 616] = mem[_2954]
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 648 len ceil32(_3060)] = mem[_2954 + 32 len ceil32(_3060)]
                    if ceil32(_3060) > _3060:
                        mem[ceil32(_2483) + ceil32(_2023) + _1551 + _3060 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2483) + ceil32(_2023) + _1551 + 616 len ceil32(_3060) + 32]
                else:
                    mem[ceil32(_2023) + mem[64] + _2483 + 420] = 0
                    _2978 = mem[64]
                    mem[mem[64]] = ceil32(_2483) + ceil32(_2023) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2483) + _2483 + 32, 0, 0), code.data[_2483 + -ceil32(_2483) + 10164 len -_2483 + ceil32(_2483) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2483) + ceil32(_2023) + _1551 + 516
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 420] = 44
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 520] = sub_e0687225Address
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 552] = this.address
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 584] = 96
                    _3076 = mem[_2978]
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 616] = mem[_2978]
                    mem[ceil32(_2483) + ceil32(_2023) + _1551 + 648 len ceil32(_3076)] = mem[_2978 + 32 len ceil32(_3076)]
                    if ceil32(_3076) > _3076:
                        mem[ceil32(_2483) + ceil32(_2023) + _1551 + _3076 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2483) + ceil32(_2023) + _1551 + 616 len ceil32(_3076) + 32]
            else:
                mem[mem[64] + _2023 + 388] = 0
                mem[mem[64] + 196] = ceil32(_2023) + 352
                _2487 = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2023) + mem[64] + 388] = mem[_1069 + ceil32(return_data.size)]
                mem[ceil32(_2023) + mem[64] + 420 len ceil32(_2487)] = mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_2487)]
                if ceil32(_2487) <= _2487:
                    _2957 = mem[64]
                    mem[mem[64]] = ceil32(_2487) + ceil32(_2023) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2487) + ceil32(_2023) + _1551 + 516
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 420] = 44
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 520] = sub_e0687225Address
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 552] = this.address
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 584] = 96
                    _3062 = mem[_2957]
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 616] = mem[_2957]
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 648 len ceil32(_3062)] = mem[_2957 + 32 len ceil32(_3062)]
                    if ceil32(_3062) > _3062:
                        mem[ceil32(_2487) + ceil32(_2023) + _1551 + _3062 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2487) + ceil32(_2023) + _1551 + 616 len ceil32(_3062) + 32]
                else:
                    mem[ceil32(_2023) + mem[64] + _2487 + 420] = 0
                    _2981 = mem[64]
                    mem[mem[64]] = ceil32(_2487) + ceil32(_2023) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 420 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2487) + _2487 + 32, 0, 0), code.data[_2487 + -ceil32(_2487) + 10164 len -_2487 + ceil32(_2487) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2487) + ceil32(_2023) + _1551 + 516
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 420] = 44
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 452 len 44] = code.data[12672 len 44]
                    if not sub_e0687225Address:
                        revert with 0, 32, 44, code.data[12672 len 44], code.data[10208 len 20] >> 96, 0
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 516] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 520] = sub_e0687225Address
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 552] = this.address
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 584] = 96
                    _3078 = mem[_2981]
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 616] = mem[_2981]
                    mem[ceil32(_2487) + ceil32(_2023) + _1551 + 648 len ceil32(_3078)] = mem[_2981 + 32 len ceil32(_3078)]
                    if ceil32(_3078) > _3078:
                        mem[ceil32(_2487) + ceil32(_2023) + _1551 + _3078 + 648] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_e0687225Address, address(this.address), 96, mem[ceil32(_2487) + ceil32(_2023) + _1551 + 616 len ceil32(_3078) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4dad2624[address(arg1)][address(arg2)][address(arg3)] = address(create2.new_address)
    stor366[address(create2.new_address)] = 1
    return address(create2.new_address)
}

function sub_c70cc1eb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = 0x4e53000000000000000000000000000000000000000000000000000000000000
    if not stor427[address(arg2)]:
        revert with 0, '', 0
    mem[164] = address(arg1)
    require ext_code.size(stor361)
    staticcall stor361.0x532cc278 with:
            gas gas_remaining wei
           args address(arg1)
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 160] = 2
    mem[ceil32(return_data.size) + 192] = 0x4e4c000000000000000000000000000000000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 224] = 2
    mem[ceil32(return_data.size) + 288] = address(arg2)
    mem[ceil32(return_data.size) + 256] = address(arg1)
    mem[0] = address(arg2)
    mem[32] = sha3(address(arg1), 424)
    if sub_2c11db0c[address(arg1)][address(arg2)]:
        require ext_code.size(sub_2c11db0c[address(arg1)][address(arg2)])
        staticcall sub_2c11db0c[address(arg1)][address(arg2)].0x5c60da1b with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 320] = 0xdde43cba00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 324] = sub_374b17caAddress
            require ext_code.size(sub_2c11db0c[address(arg1)][address(arg2)])
            call sub_2c11db0c[address(arg1)][address(arg2)].0x3659cfe6 with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 320] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 324] = 32
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (2 * ceil32(return_data.size)) + 388
            while idx < mem[ceil32(return_data.size) + 224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] >= 205:
                mem[(4 * ceil32(return_data.size)) + 320] = sub_2c11db0c[address(arg1)][address(arg2)]
                return memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + 324] = sub_374b17caAddress
            require ext_code.size(sub_2c11db0c[address(arg1)][address(arg2)])
            call sub_2c11db0c[address(arg1)][address(arg2)].0x3659cfe6 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 320] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 324] = 32
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.0x2d74ea93 with:
                 gas gas_remaining wei
                args Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return sub_2c11db0c[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 352] = 0x53484f5254000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 357] = address(arg1)
    mem[ceil32(return_data.size) + 377] = address(arg2)
    mem[ceil32(return_data.size) + 320] = 45
    mem[ceil32(return_data.size) + 401] = uint64(arg2) << 96
    require ext_code.size(stor361)
    call stor361.0x7bf8c2fb with:
         gas gas_remaining wei
        args (uint64(arg2) << 96)
    mem[ceil32(return_data.size) + 397] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 397
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 397] = 0x6723d0d900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 401] = 32
    mem[(2 * ceil32(return_data.size)) + 433] = 2
    idx = 0
    s = ceil32(return_data.size) + 256
    t = (2 * ceil32(return_data.size)) + 465
    while idx < mem[ceil32(return_data.size) + 224]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor362)
    call stor362.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 525]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _531 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _536 = mem[_531]
    require mem[_531] == mem[_531 + 12 len 20]
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg2))
    staticcall address(arg2).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _543 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _544 = mem[_543]
    require mem[_543] <= test266151307()
    require _543 + mem[_543] + 31 < _543 + return_data.size
    _545 = mem[_543 + mem[_543]]
    require mem[_543 + mem[_543]] <= test266151307()
    require ceil32(mem[_543 + mem[_543]]) + 32 >= 0 and _543 + ceil32(return_data.size) + ceil32(mem[_543 + mem[_543]]) + 32 <= test266151307()
    mem[64] = _543 + ceil32(return_data.size) + ceil32(mem[_543 + mem[_543]]) + 32
    mem[_543 + ceil32(return_data.size)] = _545
    require return_data.size >= _545 + _544 + 32
    mem[_543 + ceil32(return_data.size) + 32 len ceil32(_545)] = mem[_543 + _544 + 32 len ceil32(_545)]
    if ceil32(_545) <= _545:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1003 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1005 = mem[_1003]
        require mem[_1003] <= test266151307()
        require _1003 + mem[_1003] + 31 < _1003 + return_data.size
        _1007 = mem[_1003 + mem[_1003]]
        require mem[_1003 + mem[_1003]] <= test266151307()
        require ceil32(mem[_1003 + mem[_1003]]) + 32 >= 0 and _1003 + ceil32(return_data.size) + ceil32(mem[_1003 + mem[_1003]]) + 32 <= test266151307()
        mem[64] = _1003 + ceil32(return_data.size) + ceil32(mem[_1003 + mem[_1003]]) + 32
        mem[_1003 + ceil32(return_data.size)] = _1007
        require return_data.size >= _1007 + _1005 + 32
        mem[_1003 + ceil32(return_data.size) + 32 len ceil32(_1007)] = mem[_1003 + _1005 + 32 len ceil32(_1007)]
        if ceil32(_1007) <= _1007:
            _1451 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_536)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1455 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1455:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1455) + 224
            _1891 = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1455) + 260] = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1455) + 292 len ceil32(_1891)] = mem[_543 + ceil32(return_data.size) + 32 len ceil32(_1891)]
            if ceil32(_1891) <= _1891:
                mem[mem[64] + 196] = ceil32(_1891) + (32 * _1455) + 256
                _2319 = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1891) + mem[64] + (32 * _1455) + 292] = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1891) + mem[64] + (32 * _1455) + 324 len ceil32(_2319)] = mem[_1003 + ceil32(return_data.size) + 32 len ceil32(_2319)]
                if ceil32(_2319) <= _2319:
                    _2743 = mem[64]
                    mem[mem[64]] = ceil32(_2319) + ceil32(_1891) + (32 * _1455) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 420
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 324] = 53
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 424] = sub_374b17caAddress
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 456] = this.address
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 488] = 96
                    _2855 = mem[_2743]
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 520] = mem[_2743]
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 552 len ceil32(_2855)] = mem[_2743 + 32 len ceil32(_2855)]
                    if ceil32(_2855) > _2855:
                        mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + _2855 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 520 len ceil32(_2855) + 32]
                else:
                    mem[ceil32(_1891) + mem[64] + (32 * _1455) + _2319 + 324] = 0
                    _2767 = mem[64]
                    mem[mem[64]] = ceil32(_2319) + ceil32(_1891) + (32 * _1455) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 420
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 324] = 53
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 424] = sub_374b17caAddress
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 456] = this.address
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 488] = 96
                    _2871 = mem[_2767]
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 520] = mem[_2767]
                    mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 552 len ceil32(_2871)] = mem[_2767 + 32 len ceil32(_2871)]
                    if ceil32(_2871) > _2871:
                        mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + _2871 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2319) + ceil32(_1891) + _1451 + (32 * _1455) + 520 len ceil32(_2871) + 32]
            else:
                mem[mem[64] + (32 * _1455) + _1891 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1891) + (32 * _1455) + 256
                _2323 = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1891) + mem[64] + (32 * _1455) + 292] = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1891) + mem[64] + (32 * _1455) + 324 len ceil32(_2323)] = mem[_1003 + ceil32(return_data.size) + 32 len ceil32(_2323)]
                if ceil32(_2323) <= _2323:
                    _2746 = mem[64]
                    mem[mem[64]] = ceil32(_2323) + ceil32(_1891) + (32 * _1455) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 420
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 324] = 53
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 424] = sub_374b17caAddress
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 456] = this.address
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 488] = 96
                    _2857 = mem[_2746]
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 520] = mem[_2746]
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 552 len ceil32(_2857)] = mem[_2746 + 32 len ceil32(_2857)]
                    if ceil32(_2857) > _2857:
                        mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + _2857 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 520 len ceil32(_2857) + 32]
                else:
                    mem[ceil32(_1891) + mem[64] + (32 * _1455) + _2323 + 324] = 0
                    _2770 = mem[64]
                    mem[mem[64]] = ceil32(_2323) + ceil32(_1891) + (32 * _1455) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 420
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 324] = 53
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 424] = sub_374b17caAddress
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 456] = this.address
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 488] = 96
                    _2873 = mem[_2770]
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 520] = mem[_2770]
                    mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 552 len ceil32(_2873)] = mem[_2770 + 32 len ceil32(_2873)]
                    if ceil32(_2873) > _2873:
                        mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + _2873 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2323) + ceil32(_1891) + _1451 + (32 * _1455) + 520 len ceil32(_2873) + 32]
        else:
            mem[_1003 + ceil32(return_data.size) + _1007 + 32] = 0
            _1453 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_536)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1457 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1457:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1453 + 164] = (32 * _1457) + 224
            _1892 = mem[_543 + ceil32(return_data.size)]
            mem[_1453 + (32 * _1457) + 260] = mem[_543 + ceil32(return_data.size)]
            mem[_1453 + (32 * _1457) + 292 len ceil32(_1892)] = mem[_543 + ceil32(return_data.size) + 32 len ceil32(_1892)]
            if ceil32(_1892) <= _1892:
                mem[_1453 + 196] = ceil32(_1892) + (32 * _1457) + 256
                _2320 = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1892) + _1453 + (32 * _1457) + 292] = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1892) + _1453 + (32 * _1457) + 324 len ceil32(_2320)] = mem[_1003 + ceil32(return_data.size) + 32 len ceil32(_2320)]
                if ceil32(_2320) <= _2320:
                    _2749 = mem[64]
                    mem[mem[64]] = ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 420
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 324] = 53
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 424] = sub_374b17caAddress
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 456] = this.address
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 488] = 96
                    _2859 = mem[_2749]
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 520] = mem[_2749]
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 552 len ceil32(_2859)] = mem[_2749 + 32 len ceil32(_2859)]
                    if ceil32(_2859) > _2859:
                        mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + _2859 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 520 len ceil32(_2859) + 32]
                else:
                    mem[ceil32(_1892) + _1453 + (32 * _1457) + _2320 + 324] = 0
                    _2773 = mem[64]
                    mem[mem[64]] = ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: Mask(8 * -ceil32(_2320) + _2320 + 32, 0, 0), code.data[_2320 + -ceil32(_2320) + 10164 len -_2320 + ceil32(_2320) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 420
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 324] = 53
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 424] = sub_374b17caAddress
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 456] = this.address
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 488] = 96
                    _2875 = mem[_2773]
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 520] = mem[_2773]
                    mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 552 len ceil32(_2875)] = mem[_2773 + 32 len ceil32(_2875)]
                    if ceil32(_2875) > _2875:
                        mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + _2875 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2320) + ceil32(_1892) + _1453 + (32 * _1457) + 520 len ceil32(_2875) + 32]
            else:
                mem[_1453 + (32 * _1457) + _1892 + 292] = 0
                mem[_1453 + 196] = ceil32(_1892) + (32 * _1457) + 256
                _2324 = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1892) + _1453 + (32 * _1457) + 292] = mem[_1003 + ceil32(return_data.size)]
                mem[ceil32(_1892) + _1453 + (32 * _1457) + 324 len ceil32(_2324)] = mem[_1003 + ceil32(return_data.size) + 32 len ceil32(_2324)]
                if ceil32(_2324) <= _2324:
                    _2752 = mem[64]
                    mem[mem[64]] = ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 420
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 324] = 53
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 424] = sub_374b17caAddress
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 456] = this.address
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 488] = 96
                    _2861 = mem[_2752]
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 520] = mem[_2752]
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 552 len ceil32(_2861)] = mem[_2752 + 32 len ceil32(_2861)]
                    if ceil32(_2861) > _2861:
                        mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + _2861 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 520 len ceil32(_2861) + 32]
                else:
                    mem[ceil32(_1892) + _1453 + (32 * _1457) + _2324 + 324] = 0
                    _2776 = mem[64]
                    mem[mem[64]] = ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: Mask(8 * -ceil32(_2324) + _2324 + 32, 0, 0), code.data[_2324 + -ceil32(_2324) + 10164 len -_2324 + ceil32(_2324) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 420
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 324] = 53
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 424] = sub_374b17caAddress
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 456] = this.address
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 488] = 96
                    _2877 = mem[_2776]
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 520] = mem[_2776]
                    mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 552 len ceil32(_2877)] = mem[_2776 + 32 len ceil32(_2877)]
                    if ceil32(_2877) > _2877:
                        mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + _2877 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2324) + ceil32(_1892) + _1453 + (32 * _1457) + 520 len ceil32(_2877) + 32]
    else:
        mem[_543 + ceil32(return_data.size) + _545 + 32] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1004 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1006 = mem[_1004]
        require mem[_1004] <= test266151307()
        require _1004 + mem[_1004] + 31 < _1004 + return_data.size
        _1009 = mem[_1004 + mem[_1004]]
        require mem[_1004 + mem[_1004]] <= test266151307()
        require ceil32(mem[_1004 + mem[_1004]]) + 32 >= 0 and _1004 + ceil32(return_data.size) + ceil32(mem[_1004 + mem[_1004]]) + 32 <= test266151307()
        mem[64] = _1004 + ceil32(return_data.size) + ceil32(mem[_1004 + mem[_1004]]) + 32
        mem[_1004 + ceil32(return_data.size)] = _1009
        require return_data.size >= _1009 + _1006 + 32
        mem[_1004 + ceil32(return_data.size) + 32 len ceil32(_1009)] = mem[_1004 + _1006 + 32 len ceil32(_1009)]
        if ceil32(_1009) <= _1009:
            _1452 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_536)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1456 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1456:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1456) + 224
            _1893 = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1456) + 260] = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1456) + 292 len ceil32(_1893)] = mem[_543 + ceil32(return_data.size) + 32 len ceil32(_1893)]
            if ceil32(_1893) <= _1893:
                mem[mem[64] + 196] = ceil32(_1893) + (32 * _1456) + 256
                _2321 = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1893) + mem[64] + (32 * _1456) + 292] = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1893) + mem[64] + (32 * _1456) + 324 len ceil32(_2321)] = mem[_1004 + ceil32(return_data.size) + 32 len ceil32(_2321)]
                if ceil32(_2321) <= _2321:
                    _2755 = mem[64]
                    mem[mem[64]] = ceil32(_2321) + ceil32(_1893) + (32 * _1456) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2321) + ceil32(_1893) + mem[64] + (32 * _1456) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2321) + ceil32(_1893) + mem[64] + (32 * _1456) + 420
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 324] = 53
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 424] = sub_374b17caAddress
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 456] = this.address
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 488] = 96
                    _2863 = mem[_2755]
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 520] = mem[_2755]
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 552 len ceil32(_2863)] = mem[_2755 + 32 len ceil32(_2863)]
                    if ceil32(_2863) > _2863:
                        mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + _2863 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 520 len ceil32(_2863) + 32]
                else:
                    mem[ceil32(_1893) + mem[64] + (32 * _1456) + _2321 + 324] = 0
                    _2779 = mem[64]
                    mem[mem[64]] = ceil32(_2321) + ceil32(_1893) + (32 * _1456) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2321) + ceil32(_1893) + mem[64] + (32 * _1456) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2321) + ceil32(_1893) + mem[64] + (32 * _1456) + 420
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 324] = 53
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 424] = sub_374b17caAddress
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 456] = this.address
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 488] = 96
                    _2879 = mem[_2779]
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 520] = mem[_2779]
                    mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 552 len ceil32(_2879)] = mem[_2779 + 32 len ceil32(_2879)]
                    if ceil32(_2879) > _2879:
                        mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + _2879 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2321) + ceil32(_1893) + _1452 + (32 * _1456) + 520 len ceil32(_2879) + 32]
            else:
                mem[mem[64] + (32 * _1456) + _1893 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1893) + (32 * _1456) + 256
                _2325 = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1893) + mem[64] + (32 * _1456) + 292] = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1893) + mem[64] + (32 * _1456) + 324 len ceil32(_2325)] = mem[_1004 + ceil32(return_data.size) + 32 len ceil32(_2325)]
                if ceil32(_2325) <= _2325:
                    _2758 = mem[64]
                    mem[mem[64]] = ceil32(_2325) + ceil32(_1893) + (32 * _1456) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2325) + ceil32(_1893) + mem[64] + (32 * _1456) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2325) + ceil32(_1893) + mem[64] + (32 * _1456) + 420
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 324] = 53
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 424] = sub_374b17caAddress
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 456] = this.address
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 488] = 96
                    _2865 = mem[_2758]
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 520] = mem[_2758]
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 552 len ceil32(_2865)] = mem[_2758 + 32 len ceil32(_2865)]
                    if ceil32(_2865) > _2865:
                        mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + _2865 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 520 len ceil32(_2865) + 32]
                else:
                    mem[ceil32(_1893) + mem[64] + (32 * _1456) + _2325 + 324] = 0
                    _2782 = mem[64]
                    mem[mem[64]] = ceil32(_2325) + ceil32(_1893) + (32 * _1456) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 420
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 324] = 53
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 424] = sub_374b17caAddress
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 456] = this.address
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 488] = 96
                    _2881 = mem[_2782]
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 520] = mem[_2782]
                    mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 552 len ceil32(_2881)] = mem[_2782 + 32 len ceil32(_2881)]
                    if ceil32(_2881) > _2881:
                        mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + _2881 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2325) + ceil32(_1893) + _1452 + (32 * _1456) + 520 len ceil32(_2881) + 32]
        else:
            mem[_1004 + ceil32(return_data.size) + _1009 + 32] = 0
            _1454 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_536)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1458 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1458:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1458) + 224
            _1894 = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1458) + 260] = mem[_543 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1458) + 292 len ceil32(_1894)] = mem[_543 + ceil32(return_data.size) + 32 len ceil32(_1894)]
            if ceil32(_1894) <= _1894:
                mem[mem[64] + 196] = ceil32(_1894) + (32 * _1458) + 256
                _2322 = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1894) + mem[64] + (32 * _1458) + 292] = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1894) + mem[64] + (32 * _1458) + 324 len ceil32(_2322)] = mem[_1004 + ceil32(return_data.size) + 32 len ceil32(_2322)]
                if ceil32(_2322) <= _2322:
                    _2761 = mem[64]
                    mem[mem[64]] = ceil32(_2322) + ceil32(_1894) + (32 * _1458) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 420
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 324] = 53
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 424] = sub_374b17caAddress
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 456] = this.address
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 488] = 96
                    _2867 = mem[_2761]
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 520] = mem[_2761]
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 552 len ceil32(_2867)] = mem[_2761 + 32 len ceil32(_2867)]
                    if ceil32(_2867) > _2867:
                        mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + _2867 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 520 len ceil32(_2867) + 32]
                else:
                    mem[ceil32(_1894) + mem[64] + (32 * _1458) + _2322 + 324] = 0
                    _2785 = mem[64]
                    mem[mem[64]] = ceil32(_2322) + ceil32(_1894) + (32 * _1458) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 420
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 324] = 53
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 424] = sub_374b17caAddress
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 456] = this.address
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 488] = 96
                    _2883 = mem[_2785]
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 520] = mem[_2785]
                    mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 552 len ceil32(_2883)] = mem[_2785 + 32 len ceil32(_2883)]
                    if ceil32(_2883) > _2883:
                        mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + _2883 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2322) + ceil32(_1894) + _1454 + (32 * _1458) + 520 len ceil32(_2883) + 32]
            else:
                mem[mem[64] + (32 * _1458) + _1894 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1894) + (32 * _1458) + 256
                _2326 = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1894) + mem[64] + (32 * _1458) + 292] = mem[_1004 + ceil32(return_data.size)]
                mem[ceil32(_1894) + mem[64] + (32 * _1458) + 324 len ceil32(_2326)] = mem[_1004 + ceil32(return_data.size) + 32 len ceil32(_2326)]
                if ceil32(_2326) <= _2326:
                    _2764 = mem[64]
                    mem[mem[64]] = ceil32(_2326) + ceil32(_1894) + (32 * _1458) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 420
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 324] = 53
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 424] = sub_374b17caAddress
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 456] = this.address
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 488] = 96
                    _2869 = mem[_2764]
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 520] = mem[_2764]
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 552 len ceil32(_2869)] = mem[_2764 + 32 len ceil32(_2869)]
                    if ceil32(_2869) > _2869:
                        mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + _2869 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 520 len ceil32(_2869) + 32]
                else:
                    mem[ceil32(_1894) + mem[64] + (32 * _1458) + _2326 + 324] = 0
                    _2788 = mem[64]
                    mem[mem[64]] = ceil32(_2326) + ceil32(_1894) + (32 * _1458) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 420
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 324] = 53
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 424] = sub_374b17caAddress
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 456] = this.address
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 488] = 96
                    _2885 = mem[_2788]
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 520] = mem[_2788]
                    mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 552 len ceil32(_2885)] = mem[_2788 + 32 len ceil32(_2885)]
                    if ceil32(_2885) > _2885:
                        mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + _2885 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2326) + ceil32(_1894) + _1454 + (32 * _1458) + 520 len ceil32(_2885) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2c11db0c[address(arg1)][address(arg2)] = address(create2.new_address)
    stor366[address(create2.new_address)] = 1
    return address(create2.new_address)
}

function sub_b5affdcb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 2
    mem[128] = 0x4e54000000000000000000000000000000000000000000000000000000000000
    if not stor368[address(arg3)]:
        revert with 0, '', 0
    mem[164] = address(arg1)
    require ext_code.size(stor361)
    staticcall stor361.0x532cc278 with:
            gas gas_remaining wei
           args address(arg1)
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 160] = 2
    mem[ceil32(return_data.size) + 192] = 0x4e4c000000000000000000000000000000000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 224] = 2
    mem[ceil32(return_data.size) + 256] = 0x4e4c000000000000000000000000000000000000000000000000000000000000
    if not stor422[address(arg2)]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 288] = 3
    mem[ceil32(return_data.size) + 384] = address(arg3)
    mem[ceil32(return_data.size) + 352] = address(arg2)
    mem[ceil32(return_data.size) + 320] = address(arg1)
    mem[0] = address(arg3)
    mem[32] = sha3(address(arg2), sha3(address(arg1), 425))
    if sub_870bd025[address(arg1)][address(arg2)][address(arg3)]:
        require ext_code.size(sub_870bd025[address(arg1)][address(arg2)][address(arg3)])
        staticcall sub_870bd025[address(arg1)][address(arg2)][address(arg3)].0x5c60da1b with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 416] = 0xdde43cba00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 420 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 420] = sub_374b17caAddress
            require ext_code.size(sub_870bd025[address(arg1)][address(arg2)][address(arg3)])
            call sub_870bd025[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 420 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 416] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 420] = 32
            mem[(2 * ceil32(return_data.size)) + 452] = 3
            idx = 0
            s = ceil32(return_data.size) + 320
            t = (2 * ceil32(return_data.size)) + 484
            while idx < mem[ceil32(return_data.size) + 288]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.0x2d74ea93 with:
                 gas gas_remaining wei
                args 32, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] >= 205:
                mem[(4 * ceil32(return_data.size)) + 416] = sub_870bd025[address(arg1)][address(arg2)][address(arg3)]
                return memory
                  from (4 * ceil32(return_data.size)) + 416
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + 420] = sub_374b17caAddress
            require ext_code.size(sub_870bd025[address(arg1)][address(arg2)][address(arg3)])
            call sub_870bd025[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 420 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 416] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 420] = 32
            idx = 0
            s = ceil32(return_data.size) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.0x2d74ea93 with:
                 gas gas_remaining wei
                args Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 484 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return sub_870bd025[address(arg1)][address(arg2)][address(arg3)]
    mem[ceil32(return_data.size) + 448] = 0x53484f5254000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 453] = address(arg1)
    mem[ceil32(return_data.size) + 473] = address(arg2)
    mem[ceil32(return_data.size) + 493] = address(arg3)
    mem[ceil32(return_data.size) + 416] = 65
    mem[ceil32(return_data.size) + 517] = uint64(arg3) << 96
    require ext_code.size(stor361)
    call stor361.0x7bf8c2fb with:
         gas gas_remaining wei
        args (uint64(arg3) << 96)
    mem[ceil32(return_data.size) + 513] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 513] = 0x6723d0d900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 517] = 32
    mem[(2 * ceil32(return_data.size)) + 549] = 3
    idx = 0
    s = ceil32(return_data.size) + 320
    t = (2 * ceil32(return_data.size)) + 581
    while idx < mem[ceil32(return_data.size) + 288]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor362)
    call stor362.0x6723d0d9 with:
         gas gas_remaining wei
        args 32, mem[(2 * ceil32(return_data.size)) + 549 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
    mem[(2 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 513] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _588 = mem[(4 * ceil32(return_data.size)) + 513]
    require mem[(4 * ceil32(return_data.size)) + 513] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 544 < (4 * ceil32(return_data.size)) + return_data.size + 513
    _589 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513]) + 545 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513]) + 545
    mem[(6 * ceil32(return_data.size)) + 513] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 513] + 513]
    require return_data.size >= _589 + _588 + 32
    mem[(6 * ceil32(return_data.size)) + 545 len ceil32(_589)] = mem[(4 * ceil32(return_data.size)) + _588 + 545 len ceil32(_589)]
    if ceil32(_589) <= _589:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1079 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1081 = mem[_1079]
        require mem[_1079] <= test266151307()
        require _1079 + mem[_1079] + 31 < _1079 + return_data.size
        _1083 = mem[_1079 + mem[_1079]]
        require mem[_1079 + mem[_1079]] <= test266151307()
        require ceil32(mem[_1079 + mem[_1079]]) + 32 >= 0 and _1079 + ceil32(return_data.size) + ceil32(mem[_1079 + mem[_1079]]) + 32 <= test266151307()
        mem[64] = _1079 + ceil32(return_data.size) + ceil32(mem[_1079 + mem[_1079]]) + 32
        mem[_1079 + ceil32(return_data.size)] = _1083
        require return_data.size >= _1083 + _1081 + 32
        mem[_1079 + ceil32(return_data.size) + 32 len ceil32(_1083)] = mem[_1079 + _1081 + 32 len ceil32(_1083)]
        if ceil32(_1083) <= _1083:
            _1559 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1563 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1563:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1563) + 224
            _2031 = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1563) + 260] = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1563) + 292 len ceil32(_2031)] = mem[(6 * ceil32(return_data.size)) + 545 len ceil32(_2031)]
            if ceil32(_2031) <= _2031:
                mem[mem[64] + 196] = ceil32(_2031) + (32 * _1563) + 256
                _2491 = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2031) + mem[64] + (32 * _1563) + 292] = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2031) + mem[64] + (32 * _1563) + 324 len ceil32(_2491)] = mem[_1079 + ceil32(return_data.size) + 32 len ceil32(_2491)]
                if ceil32(_2491) <= _2491:
                    _2947 = mem[64]
                    mem[mem[64]] = ceil32(_2491) + ceil32(_2031) + (32 * _1563) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 420
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 324] = 53
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 424] = sub_374b17caAddress
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 456] = this.address
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 488] = 96
                    _3059 = mem[_2947]
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 520] = mem[_2947]
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 552 len ceil32(_3059)] = mem[_2947 + 32 len ceil32(_3059)]
                    if ceil32(_3059) > _3059:
                        mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + _3059 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 520 len ceil32(_3059) + 32]
                else:
                    mem[ceil32(_2031) + mem[64] + (32 * _1563) + _2491 + 324] = 0
                    _2971 = mem[64]
                    mem[mem[64]] = ceil32(_2491) + ceil32(_2031) + (32 * _1563) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 420
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 324] = 53
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 424] = sub_374b17caAddress
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 456] = this.address
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 488] = 96
                    _3075 = mem[_2971]
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 520] = mem[_2971]
                    mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 552 len ceil32(_3075)] = mem[_2971 + 32 len ceil32(_3075)]
                    if ceil32(_3075) > _3075:
                        mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + _3075 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2491) + ceil32(_2031) + _1559 + (32 * _1563) + 520 len ceil32(_3075) + 32]
            else:
                mem[mem[64] + (32 * _1563) + _2031 + 292] = 0
                mem[mem[64] + 196] = ceil32(_2031) + (32 * _1563) + 256
                _2495 = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2031) + mem[64] + (32 * _1563) + 292] = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2031) + mem[64] + (32 * _1563) + 324 len ceil32(_2495)] = mem[_1079 + ceil32(return_data.size) + 32 len ceil32(_2495)]
                if ceil32(_2495) <= _2495:
                    _2950 = mem[64]
                    mem[mem[64]] = ceil32(_2495) + ceil32(_2031) + (32 * _1563) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 420
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 324] = 53
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 424] = sub_374b17caAddress
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 456] = this.address
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 488] = 96
                    _3061 = mem[_2950]
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 520] = mem[_2950]
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 552 len ceil32(_3061)] = mem[_2950 + 32 len ceil32(_3061)]
                    if ceil32(_3061) > _3061:
                        mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + _3061 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 520 len ceil32(_3061) + 32]
                else:
                    mem[ceil32(_2031) + mem[64] + (32 * _1563) + _2495 + 324] = 0
                    _2974 = mem[64]
                    mem[mem[64]] = ceil32(_2495) + ceil32(_2031) + (32 * _1563) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 420
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 324] = 53
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 424] = sub_374b17caAddress
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 456] = this.address
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 488] = 96
                    _3077 = mem[_2974]
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 520] = mem[_2974]
                    mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 552 len ceil32(_3077)] = mem[_2974 + 32 len ceil32(_3077)]
                    if ceil32(_3077) > _3077:
                        mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + _3077 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2495) + ceil32(_2031) + _1559 + (32 * _1563) + 520 len ceil32(_3077) + 32]
        else:
            mem[_1079 + ceil32(return_data.size) + _1083 + 32] = 0
            _1561 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1565 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1565:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1565) + 224
            _2032 = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1565) + 260] = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1565) + 292 len ceil32(_2032)] = mem[(6 * ceil32(return_data.size)) + 545 len ceil32(_2032)]
            if ceil32(_2032) <= _2032:
                mem[mem[64] + 196] = ceil32(_2032) + (32 * _1565) + 256
                _2492 = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2032) + mem[64] + (32 * _1565) + 292] = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2032) + mem[64] + (32 * _1565) + 324 len ceil32(_2492)] = mem[_1079 + ceil32(return_data.size) + 32 len ceil32(_2492)]
                if ceil32(_2492) <= _2492:
                    _2953 = mem[64]
                    mem[mem[64]] = ceil32(_2492) + ceil32(_2032) + (32 * _1565) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2492) + ceil32(_2032) + mem[64] + (32 * _1565) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2492) + ceil32(_2032) + mem[64] + (32 * _1565) + 420
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 324] = 53
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 424] = sub_374b17caAddress
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 456] = this.address
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 488] = 96
                    _3063 = mem[_2953]
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 520] = mem[_2953]
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 552 len ceil32(_3063)] = mem[_2953 + 32 len ceil32(_3063)]
                    if ceil32(_3063) > _3063:
                        mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + _3063 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 520 len ceil32(_3063) + 32]
                else:
                    mem[ceil32(_2032) + mem[64] + (32 * _1565) + _2492 + 324] = 0
                    _2977 = mem[64]
                    mem[mem[64]] = ceil32(_2492) + ceil32(_2032) + (32 * _1565) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2492) + ceil32(_2032) + mem[64] + (32 * _1565) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2492) + ceil32(_2032) + mem[64] + (32 * _1565) + 420
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 324] = 53
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 424] = sub_374b17caAddress
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 456] = this.address
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 488] = 96
                    _3079 = mem[_2977]
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 520] = mem[_2977]
                    mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 552 len ceil32(_3079)] = mem[_2977 + 32 len ceil32(_3079)]
                    if ceil32(_3079) > _3079:
                        mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + _3079 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2492) + ceil32(_2032) + _1561 + (32 * _1565) + 520 len ceil32(_3079) + 32]
            else:
                mem[mem[64] + (32 * _1565) + _2032 + 292] = 0
                mem[mem[64] + 196] = ceil32(_2032) + (32 * _1565) + 256
                _2496 = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2032) + mem[64] + (32 * _1565) + 292] = mem[_1079 + ceil32(return_data.size)]
                mem[ceil32(_2032) + mem[64] + (32 * _1565) + 324 len ceil32(_2496)] = mem[_1079 + ceil32(return_data.size) + 32 len ceil32(_2496)]
                if ceil32(_2496) <= _2496:
                    _2956 = mem[64]
                    mem[mem[64]] = ceil32(_2496) + ceil32(_2032) + (32 * _1565) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 420
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 324] = 53
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 424] = sub_374b17caAddress
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 456] = this.address
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 488] = 96
                    _3065 = mem[_2956]
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 520] = mem[_2956]
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 552 len ceil32(_3065)] = mem[_2956 + 32 len ceil32(_3065)]
                    if ceil32(_3065) > _3065:
                        mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + _3065 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 520 len ceil32(_3065) + 32]
                else:
                    mem[ceil32(_2032) + mem[64] + (32 * _1565) + _2496 + 324] = 0
                    _2980 = mem[64]
                    mem[mem[64]] = ceil32(_2496) + ceil32(_2032) + (32 * _1565) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 420
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 324] = 53
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 424] = sub_374b17caAddress
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 456] = this.address
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 488] = 96
                    _3081 = mem[_2980]
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 520] = mem[_2980]
                    mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 552 len ceil32(_3081)] = mem[_2980 + 32 len ceil32(_3081)]
                    if ceil32(_3081) > _3081:
                        mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + _3081 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2496) + ceil32(_2032) + _1561 + (32 * _1565) + 520 len ceil32(_3081) + 32]
    else:
        mem[(6 * ceil32(return_data.size)) + _589 + 545] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1080 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1082 = mem[_1080]
        require mem[_1080] <= test266151307()
        require _1080 + mem[_1080] + 31 < _1080 + return_data.size
        _1085 = mem[_1080 + mem[_1080]]
        require mem[_1080 + mem[_1080]] <= test266151307()
        require ceil32(mem[_1080 + mem[_1080]]) + 32 >= 0 and _1080 + ceil32(return_data.size) + ceil32(mem[_1080 + mem[_1080]]) + 32 <= test266151307()
        mem[64] = _1080 + ceil32(return_data.size) + ceil32(mem[_1080 + mem[_1080]]) + 32
        mem[_1080 + ceil32(return_data.size)] = _1085
        require return_data.size >= _1085 + _1082 + 32
        mem[_1080 + ceil32(return_data.size) + 32 len ceil32(_1085)] = mem[_1080 + _1082 + 32 len ceil32(_1085)]
        if ceil32(_1085) <= _1085:
            _1560 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1564 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1564:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1560 + 164] = (32 * _1564) + 224
            _2033 = mem[(6 * ceil32(return_data.size)) + 513]
            mem[_1560 + (32 * _1564) + 260] = mem[(6 * ceil32(return_data.size)) + 513]
            mem[_1560 + (32 * _1564) + 292 len ceil32(_2033)] = mem[(6 * ceil32(return_data.size)) + 545 len ceil32(_2033)]
            if ceil32(_2033) <= _2033:
                mem[_1560 + 196] = ceil32(_2033) + (32 * _1564) + 256
                _2493 = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2033) + _1560 + (32 * _1564) + 292] = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2033) + _1560 + (32 * _1564) + 324 len ceil32(_2493)] = mem[_1080 + ceil32(return_data.size) + 32 len ceil32(_2493)]
                if ceil32(_2493) <= _2493:
                    _2959 = mem[64]
                    mem[mem[64]] = ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 420
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 324] = 53
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 424] = sub_374b17caAddress
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 456] = this.address
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 488] = 96
                    _3067 = mem[_2959]
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 520] = mem[_2959]
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 552 len ceil32(_3067)] = mem[_2959 + 32 len ceil32(_3067)]
                    if ceil32(_3067) > _3067:
                        mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + _3067 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 520 len ceil32(_3067) + 32]
                else:
                    mem[ceil32(_2033) + _1560 + (32 * _1564) + _2493 + 324] = 0
                    _2983 = mem[64]
                    mem[mem[64]] = ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2493) + _2493 + 32, 0, 0), code.data[_2493 + -ceil32(_2493) + 10164 len -_2493 + ceil32(_2493) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 420
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 324] = 53
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 424] = sub_374b17caAddress
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 456] = this.address
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 488] = 96
                    _3083 = mem[_2983]
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 520] = mem[_2983]
                    mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 552 len ceil32(_3083)] = mem[_2983 + 32 len ceil32(_3083)]
                    if ceil32(_3083) > _3083:
                        mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + _3083 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2493) + ceil32(_2033) + _1560 + (32 * _1564) + 520 len ceil32(_3083) + 32]
            else:
                mem[_1560 + (32 * _1564) + _2033 + 292] = 0
                mem[_1560 + 196] = ceil32(_2033) + (32 * _1564) + 256
                _2497 = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2033) + _1560 + (32 * _1564) + 292] = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2033) + _1560 + (32 * _1564) + 324 len ceil32(_2497)] = mem[_1080 + ceil32(return_data.size) + 32 len ceil32(_2497)]
                if ceil32(_2497) <= _2497:
                    _2962 = mem[64]
                    mem[mem[64]] = ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 420
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 324] = 53
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 424] = sub_374b17caAddress
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 456] = this.address
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 488] = 96
                    _3069 = mem[_2962]
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 520] = mem[_2962]
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 552 len ceil32(_3069)] = mem[_2962 + 32 len ceil32(_3069)]
                    if ceil32(_3069) > _3069:
                        mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + _3069 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 520 len ceil32(_3069) + 32]
                else:
                    mem[ceil32(_2033) + _1560 + (32 * _1564) + _2497 + 324] = 0
                    _2986 = mem[64]
                    mem[mem[64]] = ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + -mem[64] + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2497) + _2497 + 32, 0, 0), code.data[_2497 + -ceil32(_2497) + 10164 len -_2497 + ceil32(_2497) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 420
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 324] = 53
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 424] = sub_374b17caAddress
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 456] = this.address
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 488] = 96
                    _3085 = mem[_2986]
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 520] = mem[_2986]
                    mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 552 len ceil32(_3085)] = mem[_2986 + 32 len ceil32(_3085)]
                    if ceil32(_3085) > _3085:
                        mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + _3085 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2497) + ceil32(_2033) + _1560 + (32 * _1564) + 520 len ceil32(_3085) + 32]
        else:
            mem[_1080 + ceil32(return_data.size) + _1085 + 32] = 0
            _1562 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1566 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1566:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1566) + 224
            _2034 = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1566) + 260] = mem[(6 * ceil32(return_data.size)) + 513]
            mem[mem[64] + (32 * _1566) + 292 len ceil32(_2034)] = mem[(6 * ceil32(return_data.size)) + 545 len ceil32(_2034)]
            if ceil32(_2034) <= _2034:
                mem[mem[64] + 196] = ceil32(_2034) + (32 * _1566) + 256
                _2494 = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2034) + mem[64] + (32 * _1566) + 292] = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2034) + mem[64] + (32 * _1566) + 324 len ceil32(_2494)] = mem[_1080 + ceil32(return_data.size) + 32 len ceil32(_2494)]
                if ceil32(_2494) <= _2494:
                    _2965 = mem[64]
                    mem[mem[64]] = ceil32(_2494) + ceil32(_2034) + (32 * _1566) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 420
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 324] = 53
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 424] = sub_374b17caAddress
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 456] = this.address
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 488] = 96
                    _3071 = mem[_2965]
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 520] = mem[_2965]
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 552 len ceil32(_3071)] = mem[_2965 + 32 len ceil32(_3071)]
                    if ceil32(_3071) > _3071:
                        mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + _3071 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 520 len ceil32(_3071) + 32]
                else:
                    mem[ceil32(_2034) + mem[64] + (32 * _1566) + _2494 + 324] = 0
                    _2989 = mem[64]
                    mem[mem[64]] = ceil32(_2494) + ceil32(_2034) + (32 * _1566) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 420
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 324] = 53
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 424] = sub_374b17caAddress
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 456] = this.address
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 488] = 96
                    _3087 = mem[_2989]
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 520] = mem[_2989]
                    mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 552 len ceil32(_3087)] = mem[_2989 + 32 len ceil32(_3087)]
                    if ceil32(_3087) > _3087:
                        mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + _3087 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2494) + ceil32(_2034) + _1562 + (32 * _1566) + 520 len ceil32(_3087) + 32]
            else:
                mem[mem[64] + (32 * _1566) + _2034 + 292] = 0
                mem[mem[64] + 196] = ceil32(_2034) + (32 * _1566) + 256
                _2498 = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2034) + mem[64] + (32 * _1566) + 292] = mem[_1080 + ceil32(return_data.size)]
                mem[ceil32(_2034) + mem[64] + (32 * _1566) + 324 len ceil32(_2498)] = mem[_1080 + ceil32(return_data.size) + 32 len ceil32(_2498)]
                if ceil32(_2498) <= _2498:
                    _2968 = mem[64]
                    mem[mem[64]] = ceil32(_2498) + ceil32(_2034) + (32 * _1566) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 420
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 324] = 53
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 424] = sub_374b17caAddress
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 456] = this.address
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 488] = 96
                    _3073 = mem[_2968]
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 520] = mem[_2968]
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 552 len ceil32(_3073)] = mem[_2968 + 32 len ceil32(_3073)]
                    if ceil32(_3073) > _3073:
                        mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + _3073 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 520 len ceil32(_3073) + 32]
                else:
                    mem[ceil32(_2034) + mem[64] + (32 * _1566) + _2498 + 324] = 0
                    _2992 = mem[64]
                    mem[mem[64]] = ceil32(_2498) + ceil32(_2034) + (32 * _1566) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 324 len 2371] = code.data[10132 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10132 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 420
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 324] = 53
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 356 len 53] = code.data[12503 len 53]
                    if not sub_374b17caAddress:
                        revert with 0, 32, 53, code.data[12503 len 53], code.data[10217 len 11] >> 168, 0
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 424] = sub_374b17caAddress
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 456] = this.address
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 488] = 96
                    _3089 = mem[_2992]
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 520] = mem[_2992]
                    mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 552 len ceil32(_3089)] = mem[_2992 + 32 len ceil32(_3089)]
                    if ceil32(_3089) > _3089:
                        mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + _3089 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args sub_374b17caAddress, address(this.address), 96, mem[ceil32(_2498) + ceil32(_2034) + _1562 + (32 * _1566) + 520 len ceil32(_3089) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_870bd025[address(arg1)][address(arg2)][address(arg3)] = address(create2.new_address)
    stor366[address(create2.new_address)] = 1
    return address(create2.new_address)
}



}
