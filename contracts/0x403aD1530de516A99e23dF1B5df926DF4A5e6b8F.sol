contract main {




// =====================  Runtime code  =====================


#
#  - sub_90a2956d(?)
#
const REVISION = 35


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
address sub_6a71352eAddress;
mapping of address sub_2c11db0c;
mapping of address sub_870bd025;
array of struct stor426;
mapping of uint256 stor427;
address sub_7bfc2313Address;

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

function sub_4dad2624(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return sub_4dad2624[address(arg1)][address(arg2)][address(arg3)]
}

function sub_6a71352e(?) payable {
    return sub_6a71352eAddress
}

function sub_7bfc2313(?) payable {
    return sub_7bfc2313Address
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
        revert with 0, 32, 32, code.data[13042 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_38200686(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[13042 len 32]
    sub_7bfc2313Address = address(arg1)
}

function sub_ac818721(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[13042 len 32]
    sub_6a71352eAddress = address(arg1)
}

function upgrade() payable {
    require ext_code.size(sub_6a71352eAddress)
    call sub_6a71352eAddress.getPairImplementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
}

function registerTradable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[13042 len 32]
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
        revert with 0, 32, 32, code.data[13042 len 32]
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
        revert with 0, 32, 32, code.data[13042 len 32]
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
        revert with 0, 32, 32, code.data[13042 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[12958 len 38], mem[202 len 26]
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
        revert with 0, 32, 32, code.data[13042 len 32]
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
        revert with 0, 32, 32, code.data[13042 len 32]
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
        revert with 0, 32, 32, code.data[13042 len 32]
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[12996 len 46], mem[210 len 18]
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
    if 35 <= stor51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[13074 len 40], mem[204 len 24]
    stor51 = 35
    if uint8(stor0.field_8):
        stor361 = arg1
        stor362 = arg2
        stor363 = arg5
        stor364 = arg4
        sub_6a71352eAddress = arg3
    else:
        uint8(stor0.field_8) = 0
        stor361 = arg1
        stor362 = arg2
        stor363 = arg5
        stor364 = arg4
        sub_6a71352eAddress = arg3
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
            require ext_code.size(sub_6a71352eAddress)
            call sub_6a71352eAddress.getPairImplementation() with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_4dad2624[address(arg1)][address(arg2)][address(arg3)])
            call sub_4dad2624[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
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
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] < 35:
                require ext_code.size(sub_6a71352eAddress)
                call sub_6a71352eAddress.getPairImplementation() with:
                     gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_4dad2624[address(arg1)][address(arg2)][address(arg3)])
                call sub_4dad2624[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 352] = 0xe4627e000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 356] = 32
                idx = 0
                s = 256
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor362)
                call stor362.0xe4627e0 with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96])
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
    _553 = mem[(2 * ceil32(return_data.size)) + 444]
    require mem[(2 * ceil32(return_data.size)) + 444] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 475 < (2 * ceil32(return_data.size)) + return_data.size + 444
    _554 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444] <= test266151307()
    require ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 476 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]) + 476
    mem[(4 * ceil32(return_data.size)) + 444] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 444] + 444]
    require return_data.size >= _554 + _553 + 32
    mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_554)] = mem[(2 * ceil32(return_data.size)) + _553 + 476 len ceil32(_554)]
    if ceil32(_554) <= _554:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1012 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1014 = mem[_1012]
        require mem[_1012] <= test266151307()
        require _1012 + mem[_1012] + 31 < _1012 + return_data.size
        _1016 = mem[_1012 + mem[_1012]]
        require mem[_1012 + mem[_1012]] <= test266151307()
        require ceil32(mem[_1012 + mem[_1012]]) + 32 >= 0 and _1012 + ceil32(return_data.size) + ceil32(mem[_1012 + mem[_1012]]) + 32 <= test266151307()
        mem[64] = _1012 + ceil32(return_data.size) + ceil32(mem[_1012 + mem[_1012]]) + 32
        mem[_1012 + ceil32(return_data.size)] = _1016
        require return_data.size >= _1016 + _1014 + 32
        mem[_1012 + ceil32(return_data.size) + 32 len ceil32(_1016)] = mem[_1012 + _1014 + 32 len ceil32(_1016)]
        if ceil32(_1016) <= _1016:
            _1460 = mem[64]
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
            _1900 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_1900)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_1900)]
            if ceil32(_1900) <= _1900:
                mem[mem[64] + 196] = ceil32(_1900) + 352
                _2328 = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1900) + mem[64] + 388] = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1900) + mem[64] + 420 len ceil32(_2328)] = mem[_1012 + ceil32(return_data.size) + 32 len ceil32(_2328)]
                if ceil32(_2328) <= _2328:
                    _2752 = mem[64]
                    mem[mem[64]] = ceil32(_2328) + ceil32(_1900) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2328) + ceil32(_1900) + mem[64] + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2328) + ceil32(_1900) + mem[64] + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2328) + ceil32(_1900) + mem[64] + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 488] = 96
                    _2896 = mem[_2752]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520] = mem[_2752]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 552 len ceil32(_2896)] = mem[_2752 + 32 len ceil32(_2896)]
                    if ceil32(_2896) > _2896:
                        mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + _2896 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520 len ceil32(_2896) + 32]
                else:
                    mem[ceil32(_1900) + mem[64] + _2328 + 420] = 0
                    _2776 = mem[64]
                    mem[mem[64]] = ceil32(_2328) + ceil32(_1900) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2328) + _2328 + 32, 0, 0), code.data[_2328 + -ceil32(_2328) + 10619 len -_2328 + ceil32(_2328) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    _2872 = Mask(8 * -ceil32(_2328) + _2328 + 32, 0, 0), mem[ceil32(_1900) + _1460 + _2328 + 452 len -_2328 + ceil32(_2328)]
                    require Mask(8 * -ceil32(_2328) + _2328 + 32, 0, 0), mem[ceil32(_1900) + _1460 + _2328 + 452 len -_2328 + ceil32(_2328)] == Mask(8 * -ceil32(_2328) + _2328 + 20, 0, 0), mem[ceil32(_1900) + _1460 + _2328 + 452 len -_2328 + ceil32(_2328)]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 424] = address(_2872)
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 488] = 96
                    _2904 = mem[_2776]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520] = mem[_2776]
                    mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 552 len ceil32(_2904)] = mem[_2776 + 32 len ceil32(_2904)]
                    if ceil32(_2904) > _2904:
                        mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + _2904 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_2872), address(this.address), 96, mem[ceil32(_2328) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520 len ceil32(_2904) + 32]
            else:
                mem[mem[64] + _1900 + 388] = 0
                mem[mem[64] + 196] = ceil32(_1900) + 352
                _2332 = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1900) + mem[64] + 388] = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1900) + mem[64] + 420 len ceil32(_2332)] = mem[_1012 + ceil32(return_data.size) + 32 len ceil32(_2332)]
                if ceil32(_2332) <= _2332:
                    _2755 = mem[64]
                    mem[mem[64]] = ceil32(_2332) + ceil32(_1900) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2332) + ceil32(_1900) + mem[64] + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2332) + ceil32(_1900) + mem[64] + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2332) + ceil32(_1900) + mem[64] + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 488] = 96
                    _2897 = mem[_2755]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520] = mem[_2755]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 552 len ceil32(_2897)] = mem[_2755 + 32 len ceil32(_2897)]
                    if ceil32(_2897) > _2897:
                        mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + _2897 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520 len ceil32(_2897) + 32]
                else:
                    mem[ceil32(_1900) + mem[64] + _2332 + 420] = 0
                    _2779 = mem[64]
                    mem[mem[64]] = ceil32(_2332) + ceil32(_1900) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2332) + ceil32(_1900) + mem[64] + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: Mask(8 * -ceil32(_2332) + _2332 + 32, 0, 0), code.data[_2332 + -ceil32(_2332) + 10619 len -_2332 + ceil32(_2332) + 2339]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2332) + ceil32(_1900) + mem[64] + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2332) + ceil32(_1900) + mem[64] + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    _2873 = Mask(8 * -ceil32(_2332) + _2332 + 32, 0, 0), mem[ceil32(_1900) + _1460 + _2332 + 452 len -_2332 + ceil32(_2332)]
                    require Mask(8 * -ceil32(_2332) + _2332 + 32, 0, 0), mem[ceil32(_1900) + _1460 + _2332 + 452 len -_2332 + ceil32(_2332)] == Mask(8 * -ceil32(_2332) + _2332 + 20, 0, 0), mem[ceil32(_1900) + _1460 + _2332 + 452 len -_2332 + ceil32(_2332)]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 424] = address(_2873)
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 488] = 96
                    _2905 = mem[_2779]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520] = mem[_2779]
                    mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 552 len ceil32(_2905)] = mem[_2779 + 32 len ceil32(_2905)]
                    if ceil32(_2905) > _2905:
                        mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + _2905 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_2873), address(this.address), 96, mem[ceil32(_2332) + ceil32(_1900) + _1460 + ceil32(return_data.size) + 520 len ceil32(_2905) + 32]
        else:
            mem[_1012 + ceil32(return_data.size) + _1016 + 32] = 0
            _1462 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _1901 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_1901)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_1901)]
            if ceil32(_1901) <= _1901:
                mem[mem[64] + 196] = ceil32(_1901) + 352
                _2329 = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1901) + mem[64] + 388] = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1901) + mem[64] + 420 len ceil32(_2329)] = mem[_1012 + ceil32(return_data.size) + 32 len ceil32(_2329)]
                if ceil32(_2329) <= _2329:
                    _2758 = mem[64]
                    mem[mem[64]] = ceil32(_2329) + ceil32(_1901) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 488] = 96
                    _2898 = mem[_2758]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520] = mem[_2758]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 552 len ceil32(_2898)] = mem[_2758 + 32 len ceil32(_2898)]
                    if ceil32(_2898) > _2898:
                        mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + _2898 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520 len ceil32(_2898) + 32]
                else:
                    mem[ceil32(_1901) + mem[64] + _2329 + 420] = 0
                    _2782 = mem[64]
                    mem[mem[64]] = ceil32(_2329) + ceil32(_1901) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 488] = 96
                    _2906 = mem[_2782]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520] = mem[_2782]
                    mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 552 len ceil32(_2906)] = mem[_2782 + 32 len ceil32(_2906)]
                    if ceil32(_2906) > _2906:
                        mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + _2906 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2329) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520 len ceil32(_2906) + 32]
            else:
                mem[mem[64] + _1901 + 388] = 0
                mem[mem[64] + 196] = ceil32(_1901) + 352
                _2333 = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1901) + mem[64] + 388] = mem[_1012 + ceil32(return_data.size)]
                mem[ceil32(_1901) + mem[64] + 420 len ceil32(_2333)] = mem[_1012 + ceil32(return_data.size) + 32 len ceil32(_2333)]
                if ceil32(_2333) <= _2333:
                    _2761 = mem[64]
                    mem[mem[64]] = ceil32(_2333) + ceil32(_1901) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 488] = 96
                    _2899 = mem[_2761]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520] = mem[_2761]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 552 len ceil32(_2899)] = mem[_2761 + 32 len ceil32(_2899)]
                    if ceil32(_2899) > _2899:
                        mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + _2899 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520 len ceil32(_2899) + 32]
                else:
                    mem[ceil32(_1901) + mem[64] + _2333 + 420] = 0
                    _2785 = mem[64]
                    mem[mem[64]] = ceil32(_2333) + ceil32(_1901) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 488] = 96
                    _2907 = mem[_2785]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520] = mem[_2785]
                    mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 552 len ceil32(_2907)] = mem[_2785 + 32 len ceil32(_2907)]
                    if ceil32(_2907) > _2907:
                        mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + _2907 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2333) + ceil32(_1901) + _1462 + ceil32(return_data.size) + 520 len ceil32(_2907) + 32]
    else:
        mem[(4 * ceil32(return_data.size)) + _554 + 476] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1013 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1015 = mem[_1013]
        require mem[_1013] <= test266151307()
        require _1013 + mem[_1013] + 31 < _1013 + return_data.size
        _1018 = mem[_1013 + mem[_1013]]
        require mem[_1013 + mem[_1013]] <= test266151307()
        require ceil32(mem[_1013 + mem[_1013]]) + 32 >= 0 and _1013 + ceil32(return_data.size) + ceil32(mem[_1013 + mem[_1013]]) + 32 <= test266151307()
        mem[64] = _1013 + ceil32(return_data.size) + ceil32(mem[_1013 + mem[_1013]]) + 32
        mem[_1013 + ceil32(return_data.size)] = _1018
        require return_data.size >= _1018 + _1015 + 32
        mem[_1013 + ceil32(return_data.size) + 32 len ceil32(_1018)] = mem[_1013 + _1015 + 32 len ceil32(_1018)]
        if ceil32(_1018) <= _1018:
            _1461 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _1902 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_1902)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_1902)]
            if ceil32(_1902) <= _1902:
                mem[mem[64] + 196] = ceil32(_1902) + 352
                _2330 = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1902) + mem[64] + 388] = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1902) + mem[64] + 420 len ceil32(_2330)] = mem[_1013 + ceil32(return_data.size) + 32 len ceil32(_2330)]
                if ceil32(_2330) <= _2330:
                    _2764 = mem[64]
                    mem[mem[64]] = ceil32(_2330) + ceil32(_1902) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 488] = 96
                    _2900 = mem[_2764]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520] = mem[_2764]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 552 len ceil32(_2900)] = mem[_2764 + 32 len ceil32(_2900)]
                    if ceil32(_2900) > _2900:
                        mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + _2900 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520 len ceil32(_2900) + 32]
                else:
                    mem[ceil32(_1902) + mem[64] + _2330 + 420] = 0
                    _2788 = mem[64]
                    mem[mem[64]] = ceil32(_2330) + ceil32(_1902) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 488] = 96
                    _2908 = mem[_2788]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520] = mem[_2788]
                    mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 552 len ceil32(_2908)] = mem[_2788 + 32 len ceil32(_2908)]
                    if ceil32(_2908) > _2908:
                        mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + _2908 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2330) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520 len ceil32(_2908) + 32]
            else:
                mem[mem[64] + _1902 + 388] = 0
                mem[mem[64] + 196] = ceil32(_1902) + 352
                _2334 = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1902) + mem[64] + 388] = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1902) + mem[64] + 420 len ceil32(_2334)] = mem[_1013 + ceil32(return_data.size) + 32 len ceil32(_2334)]
                if ceil32(_2334) <= _2334:
                    _2767 = mem[64]
                    mem[mem[64]] = ceil32(_2334) + ceil32(_1902) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 488] = 96
                    _2901 = mem[_2767]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520] = mem[_2767]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 552 len ceil32(_2901)] = mem[_2767 + 32 len ceil32(_2901)]
                    if ceil32(_2901) > _2901:
                        mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + _2901 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520 len ceil32(_2901) + 32]
                else:
                    mem[ceil32(_1902) + mem[64] + _2334 + 420] = 0
                    _2791 = mem[64]
                    mem[mem[64]] = ceil32(_2334) + ceil32(_1902) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 488] = 96
                    _2909 = mem[_2791]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520] = mem[_2791]
                    mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 552 len ceil32(_2909)] = mem[_2791 + 32 len ceil32(_2909)]
                    if ceil32(_2909) > _2909:
                        mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + _2909 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2334) + ceil32(_1902) + _1461 + ceil32(return_data.size) + 520 len ceil32(_2909) + 32]
        else:
            mem[_1013 + ceil32(return_data.size) + _1018 + 32] = 0
            _1463 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            mem[mem[64] + 228] = 3
            idx = 0
            s = 256
            t = mem[64] + 260
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = 320
            _1903 = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + 444]
            mem[mem[64] + 388 len ceil32(_1903)] = mem[(4 * ceil32(return_data.size)) + 476 len ceil32(_1903)]
            if ceil32(_1903) <= _1903:
                mem[mem[64] + 196] = ceil32(_1903) + 352
                _2331 = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1903) + mem[64] + 388] = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1903) + mem[64] + 420 len ceil32(_2331)] = mem[_1013 + ceil32(return_data.size) + 32 len ceil32(_2331)]
                if ceil32(_2331) <= _2331:
                    _2770 = mem[64]
                    mem[mem[64]] = ceil32(_2331) + ceil32(_1903) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 488] = 96
                    _2902 = mem[_2770]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520] = mem[_2770]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 552 len ceil32(_2902)] = mem[_2770 + 32 len ceil32(_2902)]
                    if ceil32(_2902) > _2902:
                        mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + _2902 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520 len ceil32(_2902) + 32]
                else:
                    mem[ceil32(_1903) + mem[64] + _2331 + 420] = 0
                    _2794 = mem[64]
                    mem[mem[64]] = ceil32(_2331) + ceil32(_1903) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 488] = 96
                    _2910 = mem[_2794]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520] = mem[_2794]
                    mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 552 len ceil32(_2910)] = mem[_2794 + 32 len ceil32(_2910)]
                    if ceil32(_2910) > _2910:
                        mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + _2910 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2331) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520 len ceil32(_2910) + 32]
            else:
                mem[mem[64] + _1903 + 388] = 0
                mem[mem[64] + 196] = ceil32(_1903) + 352
                _2335 = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1903) + mem[64] + 388] = mem[_1013 + ceil32(return_data.size)]
                mem[ceil32(_1903) + mem[64] + 420 len ceil32(_2335)] = mem[_1013 + ceil32(return_data.size) + 32 len ceil32(_2335)]
                if ceil32(_2335) <= _2335:
                    _2773 = mem[64]
                    mem[mem[64]] = ceil32(_2335) + ceil32(_1903) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 488] = 96
                    _2903 = mem[_2773]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520] = mem[_2773]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 552 len ceil32(_2903)] = mem[_2773 + 32 len ceil32(_2903)]
                    if ceil32(_2903) > _2903:
                        mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + _2903 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520 len ceil32(_2903) + 32]
                else:
                    mem[ceil32(_1903) + mem[64] + _2335 + 420] = 0
                    _2797 = mem[64]
                    mem[mem[64]] = ceil32(_2335) + ceil32(_1903) + 388
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + 420 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_6a71352eAddress)
                    call sub_6a71352eAddress.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + 420] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 420] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 424] = address(ext_call.return_data[0])
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 456] = this.address
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 488] = 96
                    _2911 = mem[_2797]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520] = mem[_2797]
                    mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 552 len ceil32(_2911)] = mem[_2797 + 32 len ceil32(_2911)]
                    if ceil32(_2911) > _2911:
                        mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + _2911 + 552] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2335) + ceil32(_1903) + _1463 + ceil32(return_data.size) + 520 len ceil32(_2911) + 32]
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
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 320] = 0xdde43cba00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 320] = 0xaec525e400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_7bfc2313Address)
            call sub_7bfc2313Address.getPairImplementation() with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
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
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] >= 35:
                mem[(4 * ceil32(return_data.size)) + 320] = sub_2c11db0c[address(arg1)][address(arg2)]
                return memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + 320] = 0xaec525e400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_7bfc2313Address)
            call sub_7bfc2313Address.getPairImplementation() with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 324 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_2c11db0c[address(arg1)][address(arg2)])
            call sub_2c11db0c[address(arg1)][address(arg2)].0x3659cfe6 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 356 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 320] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 324] = 32
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 256
            t = (6 * ceil32(return_data.size)) + 388
            while idx < mem[ceil32(return_data.size) + 224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
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
    _507 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _512 = mem[_507]
    require mem[_507] == mem[_507 + 12 len 20]
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg2))
    staticcall address(arg2).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _519 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _520 = mem[_519]
    require mem[_519] <= test266151307()
    require _519 + mem[_519] + 31 < _519 + return_data.size
    _521 = mem[_519 + mem[_519]]
    require mem[_519 + mem[_519]] <= test266151307()
    require ceil32(mem[_519 + mem[_519]]) + 32 >= 0 and _519 + ceil32(return_data.size) + ceil32(mem[_519 + mem[_519]]) + 32 <= test266151307()
    mem[64] = _519 + ceil32(return_data.size) + ceil32(mem[_519 + mem[_519]]) + 32
    mem[_519 + ceil32(return_data.size)] = _521
    require return_data.size >= _521 + _520 + 32
    mem[_519 + ceil32(return_data.size) + 32 len ceil32(_521)] = mem[_519 + _520 + 32 len ceil32(_521)]
    if ceil32(_521) <= _521:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _947 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _949 = mem[_947]
        require mem[_947] <= test266151307()
        require _947 + mem[_947] + 31 < _947 + return_data.size
        _951 = mem[_947 + mem[_947]]
        require mem[_947 + mem[_947]] <= test266151307()
        require ceil32(mem[_947 + mem[_947]]) + 32 >= 0 and _947 + ceil32(return_data.size) + ceil32(mem[_947 + mem[_947]]) + 32 <= test266151307()
        mem[64] = _947 + ceil32(return_data.size) + ceil32(mem[_947 + mem[_947]]) + 32
        mem[_947 + ceil32(return_data.size)] = _951
        require return_data.size >= _951 + _949 + 32
        mem[_947 + ceil32(return_data.size) + 32 len ceil32(_951)] = mem[_947 + _949 + 32 len ceil32(_951)]
        if ceil32(_951) <= _951:
            _1363 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_512)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1367 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1367:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1367) + 224
            _1771 = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1367) + 260] = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1367) + 292 len ceil32(_1771)] = mem[_519 + ceil32(return_data.size) + 32 len ceil32(_1771)]
            if ceil32(_1771) <= _1771:
                mem[mem[64] + 196] = ceil32(_1771) + (32 * _1367) + 256
                _2167 = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1771) + mem[64] + (32 * _1367) + 292] = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1771) + mem[64] + (32 * _1367) + 324 len ceil32(_2167)] = mem[_947 + ceil32(return_data.size) + 32 len ceil32(_2167)]
                if ceil32(_2167) <= _2167:
                    _2559 = mem[64]
                    mem[mem[64]] = ceil32(_2167) + ceil32(_1771) + (32 * _1367) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 392] = 96
                    _2703 = mem[_2559]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424] = mem[_2559]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 456 len ceil32(_2703)] = mem[_2559 + 32 len ceil32(_2703)]
                    if ceil32(_2703) > _2703:
                        mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + _2703 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424 len ceil32(_2703) + 32]
                else:
                    mem[ceil32(_1771) + mem[64] + (32 * _1367) + _2167 + 324] = 0
                    _2583 = mem[64]
                    mem[mem[64]] = ceil32(_2167) + ceil32(_1771) + (32 * _1367) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2167) + ceil32(_1771) + mem[64] + (32 * _1367) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 392] = 96
                    _2711 = mem[_2583]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424] = mem[_2583]
                    mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 456 len ceil32(_2711)] = mem[_2583 + 32 len ceil32(_2711)]
                    if ceil32(_2711) > _2711:
                        mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + _2711 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2167) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424 len ceil32(_2711) + 32]
            else:
                mem[mem[64] + (32 * _1367) + _1771 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1771) + (32 * _1367) + 256
                _2171 = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1771) + mem[64] + (32 * _1367) + 292] = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1771) + mem[64] + (32 * _1367) + 324 len ceil32(_2171)] = mem[_947 + ceil32(return_data.size) + 32 len ceil32(_2171)]
                if ceil32(_2171) <= _2171:
                    _2562 = mem[64]
                    mem[mem[64]] = ceil32(_2171) + ceil32(_1771) + (32 * _1367) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 392] = 96
                    _2704 = mem[_2562]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424] = mem[_2562]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 456 len ceil32(_2704)] = mem[_2562 + 32 len ceil32(_2704)]
                    if ceil32(_2704) > _2704:
                        mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + _2704 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424 len ceil32(_2704) + 32]
                else:
                    mem[ceil32(_1771) + mem[64] + (32 * _1367) + _2171 + 324] = 0
                    _2586 = mem[64]
                    mem[mem[64]] = ceil32(_2171) + ceil32(_1771) + (32 * _1367) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2171) + ceil32(_1771) + mem[64] + (32 * _1367) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 392] = 96
                    _2712 = mem[_2586]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424] = mem[_2586]
                    mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 456 len ceil32(_2712)] = mem[_2586 + 32 len ceil32(_2712)]
                    if ceil32(_2712) > _2712:
                        mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + _2712 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2171) + ceil32(_1771) + _1363 + (32 * _1367) + ceil32(return_data.size) + 424 len ceil32(_2712) + 32]
        else:
            mem[_947 + ceil32(return_data.size) + _951 + 32] = 0
            _1365 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_512)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1369 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1369:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1369) + 224
            _1772 = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1369) + 260] = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1369) + 292 len ceil32(_1772)] = mem[_519 + ceil32(return_data.size) + 32 len ceil32(_1772)]
            if ceil32(_1772) <= _1772:
                mem[mem[64] + 196] = ceil32(_1772) + (32 * _1369) + 256
                _2168 = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1772) + mem[64] + (32 * _1369) + 292] = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1772) + mem[64] + (32 * _1369) + 324 len ceil32(_2168)] = mem[_947 + ceil32(return_data.size) + 32 len ceil32(_2168)]
                if ceil32(_2168) <= _2168:
                    _2565 = mem[64]
                    mem[mem[64]] = ceil32(_2168) + ceil32(_1772) + (32 * _1369) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 392] = 96
                    _2705 = mem[_2565]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424] = mem[_2565]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 456 len ceil32(_2705)] = mem[_2565 + 32 len ceil32(_2705)]
                    if ceil32(_2705) > _2705:
                        mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + _2705 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424 len ceil32(_2705) + 32]
                else:
                    mem[ceil32(_1772) + mem[64] + (32 * _1369) + _2168 + 324] = 0
                    _2589 = mem[64]
                    mem[mem[64]] = ceil32(_2168) + ceil32(_1772) + (32 * _1369) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2168) + ceil32(_1772) + mem[64] + (32 * _1369) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 392] = 96
                    _2713 = mem[_2589]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424] = mem[_2589]
                    mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 456 len ceil32(_2713)] = mem[_2589 + 32 len ceil32(_2713)]
                    if ceil32(_2713) > _2713:
                        mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + _2713 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2168) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424 len ceil32(_2713) + 32]
            else:
                mem[mem[64] + (32 * _1369) + _1772 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1772) + (32 * _1369) + 256
                _2172 = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1772) + mem[64] + (32 * _1369) + 292] = mem[_947 + ceil32(return_data.size)]
                mem[ceil32(_1772) + mem[64] + (32 * _1369) + 324 len ceil32(_2172)] = mem[_947 + ceil32(return_data.size) + 32 len ceil32(_2172)]
                if ceil32(_2172) <= _2172:
                    _2568 = mem[64]
                    mem[mem[64]] = ceil32(_2172) + ceil32(_1772) + (32 * _1369) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 392] = 96
                    _2706 = mem[_2568]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424] = mem[_2568]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 456 len ceil32(_2706)] = mem[_2568 + 32 len ceil32(_2706)]
                    if ceil32(_2706) > _2706:
                        mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + _2706 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424 len ceil32(_2706) + 32]
                else:
                    mem[ceil32(_1772) + mem[64] + (32 * _1369) + _2172 + 324] = 0
                    _2592 = mem[64]
                    mem[mem[64]] = ceil32(_2172) + ceil32(_1772) + (32 * _1369) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2172) + ceil32(_1772) + mem[64] + (32 * _1369) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 392] = 96
                    _2714 = mem[_2592]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424] = mem[_2592]
                    mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 456 len ceil32(_2714)] = mem[_2592 + 32 len ceil32(_2714)]
                    if ceil32(_2714) > _2714:
                        mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + _2714 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2172) + ceil32(_1772) + _1365 + (32 * _1369) + ceil32(return_data.size) + 424 len ceil32(_2714) + 32]
    else:
        mem[_519 + ceil32(return_data.size) + _521 + 32] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _948 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _950 = mem[_948]
        require mem[_948] <= test266151307()
        require _948 + mem[_948] + 31 < _948 + return_data.size
        _953 = mem[_948 + mem[_948]]
        require mem[_948 + mem[_948]] <= test266151307()
        require ceil32(mem[_948 + mem[_948]]) + 32 >= 0 and _948 + ceil32(return_data.size) + ceil32(mem[_948 + mem[_948]]) + 32 <= test266151307()
        mem[64] = _948 + ceil32(return_data.size) + ceil32(mem[_948 + mem[_948]]) + 32
        mem[_948 + ceil32(return_data.size)] = _953
        require return_data.size >= _953 + _950 + 32
        mem[_948 + ceil32(return_data.size) + 32 len ceil32(_953)] = mem[_948 + _950 + 32 len ceil32(_953)]
        if ceil32(_953) <= _953:
            _1364 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_512)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1368 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1368:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1368) + 224
            _1773 = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1368) + 260] = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1368) + 292 len ceil32(_1773)] = mem[_519 + ceil32(return_data.size) + 32 len ceil32(_1773)]
            if ceil32(_1773) <= _1773:
                mem[mem[64] + 196] = ceil32(_1773) + (32 * _1368) + 256
                _2169 = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1773) + mem[64] + (32 * _1368) + 292] = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1773) + mem[64] + (32 * _1368) + 324 len ceil32(_2169)] = mem[_948 + ceil32(return_data.size) + 32 len ceil32(_2169)]
                if ceil32(_2169) <= _2169:
                    _2571 = mem[64]
                    mem[mem[64]] = ceil32(_2169) + ceil32(_1773) + (32 * _1368) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 392] = 96
                    _2707 = mem[_2571]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424] = mem[_2571]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 456 len ceil32(_2707)] = mem[_2571 + 32 len ceil32(_2707)]
                    if ceil32(_2707) > _2707:
                        mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + _2707 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424 len ceil32(_2707) + 32]
                else:
                    mem[ceil32(_1773) + mem[64] + (32 * _1368) + _2169 + 324] = 0
                    _2595 = mem[64]
                    mem[mem[64]] = ceil32(_2169) + ceil32(_1773) + (32 * _1368) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 392] = 96
                    _2715 = mem[_2595]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424] = mem[_2595]
                    mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 456 len ceil32(_2715)] = mem[_2595 + 32 len ceil32(_2715)]
                    if ceil32(_2715) > _2715:
                        mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + _2715 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2169) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424 len ceil32(_2715) + 32]
            else:
                mem[mem[64] + (32 * _1368) + _1773 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1773) + (32 * _1368) + 256
                _2173 = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1773) + mem[64] + (32 * _1368) + 292] = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1773) + mem[64] + (32 * _1368) + 324 len ceil32(_2173)] = mem[_948 + ceil32(return_data.size) + 32 len ceil32(_2173)]
                if ceil32(_2173) <= _2173:
                    _2574 = mem[64]
                    mem[mem[64]] = ceil32(_2173) + ceil32(_1773) + (32 * _1368) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 392] = 96
                    _2708 = mem[_2574]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424] = mem[_2574]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 456 len ceil32(_2708)] = mem[_2574 + 32 len ceil32(_2708)]
                    if ceil32(_2708) > _2708:
                        mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + _2708 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424 len ceil32(_2708) + 32]
                else:
                    mem[ceil32(_1773) + mem[64] + (32 * _1368) + _2173 + 324] = 0
                    _2598 = mem[64]
                    mem[mem[64]] = ceil32(_2173) + ceil32(_1773) + (32 * _1368) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 392] = 96
                    _2716 = mem[_2598]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424] = mem[_2598]
                    mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 456 len ceil32(_2716)] = mem[_2598 + 32 len ceil32(_2716)]
                    if ceil32(_2716) > _2716:
                        mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + _2716 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2173) + ceil32(_1773) + _1364 + (32 * _1368) + ceil32(return_data.size) + 424 len ceil32(_2716) + 32]
        else:
            mem[_948 + ceil32(return_data.size) + _953 + 32] = 0
            _1366 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_512)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1370 = mem[ceil32(return_data.size) + 224]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 224]
            idx = 0
            s = ceil32(return_data.size) + 256
            t = mem[64] + 260
            while idx < _1370:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1370) + 224
            _1774 = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1370) + 260] = mem[_519 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1370) + 292 len ceil32(_1774)] = mem[_519 + ceil32(return_data.size) + 32 len ceil32(_1774)]
            if ceil32(_1774) <= _1774:
                mem[mem[64] + 196] = ceil32(_1774) + (32 * _1370) + 256
                _2170 = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1774) + mem[64] + (32 * _1370) + 292] = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1774) + mem[64] + (32 * _1370) + 324 len ceil32(_2170)] = mem[_948 + ceil32(return_data.size) + 32 len ceil32(_2170)]
                if ceil32(_2170) <= _2170:
                    _2577 = mem[64]
                    mem[mem[64]] = ceil32(_2170) + ceil32(_1774) + (32 * _1370) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2170) + ceil32(_1774) + mem[64] + (32 * _1370) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2170) + ceil32(_1774) + mem[64] + (32 * _1370) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2170) + ceil32(_1774) + mem[64] + (32 * _1370) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 392] = 96
                    _2709 = mem[_2577]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424] = mem[_2577]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 456 len ceil32(_2709)] = mem[_2577 + 32 len ceil32(_2709)]
                    if ceil32(_2709) > _2709:
                        mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + _2709 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424 len ceil32(_2709) + 32]
                else:
                    mem[ceil32(_1774) + mem[64] + (32 * _1370) + _2170 + 324] = 0
                    _2601 = mem[64]
                    mem[mem[64]] = ceil32(_2170) + ceil32(_1774) + (32 * _1370) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 392] = 96
                    _2717 = mem[_2601]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424] = mem[_2601]
                    mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 456 len ceil32(_2717)] = mem[_2601 + 32 len ceil32(_2717)]
                    if ceil32(_2717) > _2717:
                        mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + _2717 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2170) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424 len ceil32(_2717) + 32]
            else:
                mem[mem[64] + (32 * _1370) + _1774 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1774) + (32 * _1370) + 256
                _2174 = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1774) + mem[64] + (32 * _1370) + 292] = mem[_948 + ceil32(return_data.size)]
                mem[ceil32(_1774) + mem[64] + (32 * _1370) + 324 len ceil32(_2174)] = mem[_948 + ceil32(return_data.size) + 32 len ceil32(_2174)]
                if ceil32(_2174) <= _2174:
                    _2580 = mem[64]
                    mem[mem[64]] = ceil32(_2174) + ceil32(_1774) + (32 * _1370) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 392] = 96
                    _2710 = mem[_2580]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424] = mem[_2580]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 456 len ceil32(_2710)] = mem[_2580 + 32 len ceil32(_2710)]
                    if ceil32(_2710) > _2710:
                        mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + _2710 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424 len ceil32(_2710) + 32]
                else:
                    mem[ceil32(_1774) + mem[64] + (32 * _1370) + _2174 + 324] = 0
                    _2604 = mem[64]
                    mem[mem[64]] = ceil32(_2174) + ceil32(_1774) + (32 * _1370) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2174) + ceil32(_1774) + mem[64] + (32 * _1370) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 392] = 96
                    _2718 = mem[_2604]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424] = mem[_2604]
                    mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 456 len ceil32(_2718)] = mem[_2604 + 32 len ceil32(_2718)]
                    if ceil32(_2718) > _2718:
                        mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + _2718 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2174) + ceil32(_1774) + _1366 + (32 * _1370) + ceil32(return_data.size) + 424 len ceil32(_2718) + 32]
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
            mem[(2 * ceil32(return_data.size)) + 416] = 0xaec525e400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_7bfc2313Address)
            call sub_7bfc2313Address.getPairImplementation() with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 420 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
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
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] >= 35:
                mem[(4 * ceil32(return_data.size)) + 416] = sub_870bd025[address(arg1)][address(arg2)][address(arg3)]
                return memory
                  from (4 * ceil32(return_data.size)) + 416
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + 416] = 0xaec525e400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_7bfc2313Address)
            call sub_7bfc2313Address.getPairImplementation() with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 420 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_870bd025[address(arg1)][address(arg2)][address(arg3)])
            call sub_870bd025[address(arg1)][address(arg2)][address(arg3)].0x3659cfe6 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 452 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 416] = 0x2d74ea9300000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 420] = 32
            mem[(6 * ceil32(return_data.size)) + 452] = 3
            idx = 0
            s = ceil32(return_data.size) + 320
            t = (6 * ceil32(return_data.size)) + 484
            while idx < mem[ceil32(return_data.size) + 288]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor362)
            call stor362.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 576]
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
    mem[64] = (2 * ceil32(return_data.size)) + 513
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
    call stor362.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 673]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _549 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _556 = mem[_549]
    require mem[_549] == mem[_549 + 12 len 20]
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _563 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _564 = mem[_563]
    require mem[_563] <= test266151307()
    require _563 + mem[_563] + 31 < _563 + return_data.size
    _565 = mem[_563 + mem[_563]]
    require mem[_563 + mem[_563]] <= test266151307()
    require ceil32(mem[_563 + mem[_563]]) + 32 >= 0 and _563 + ceil32(return_data.size) + ceil32(mem[_563 + mem[_563]]) + 32 <= test266151307()
    mem[64] = _563 + ceil32(return_data.size) + ceil32(mem[_563 + mem[_563]]) + 32
    mem[_563 + ceil32(return_data.size)] = _565
    require return_data.size >= _565 + _564 + 32
    mem[_563 + ceil32(return_data.size) + 32 len ceil32(_565)] = mem[_563 + _564 + 32 len ceil32(_565)]
    if ceil32(_565) <= _565:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1023 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1025 = mem[_1023]
        require mem[_1023] <= test266151307()
        require _1023 + mem[_1023] + 31 < _1023 + return_data.size
        _1027 = mem[_1023 + mem[_1023]]
        require mem[_1023 + mem[_1023]] <= test266151307()
        require ceil32(mem[_1023 + mem[_1023]]) + 32 >= 0 and _1023 + ceil32(return_data.size) + ceil32(mem[_1023 + mem[_1023]]) + 32 <= test266151307()
        mem[64] = _1023 + ceil32(return_data.size) + ceil32(mem[_1023 + mem[_1023]]) + 32
        mem[_1023 + ceil32(return_data.size)] = _1027
        require return_data.size >= _1027 + _1025 + 32
        mem[_1023 + ceil32(return_data.size) + 32 len ceil32(_1027)] = mem[_1023 + _1025 + 32 len ceil32(_1027)]
        if ceil32(_1027) <= _1027:
            _1471 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_556)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1475 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1475:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1475) + 224
            _1911 = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1475) + 260] = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1475) + 292 len ceil32(_1911)] = mem[_563 + ceil32(return_data.size) + 32 len ceil32(_1911)]
            if ceil32(_1911) <= _1911:
                mem[mem[64] + 196] = ceil32(_1911) + (32 * _1475) + 256
                _2339 = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1911) + mem[64] + (32 * _1475) + 292] = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1911) + mem[64] + (32 * _1475) + 324 len ceil32(_2339)] = mem[_1023 + ceil32(return_data.size) + 32 len ceil32(_2339)]
                if ceil32(_2339) <= _2339:
                    _2763 = mem[64]
                    mem[mem[64]] = ceil32(_2339) + ceil32(_1911) + (32 * _1475) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 392] = 96
                    _2907 = mem[_2763]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424] = mem[_2763]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 456 len ceil32(_2907)] = mem[_2763 + 32 len ceil32(_2907)]
                    if ceil32(_2907) > _2907:
                        mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + _2907 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424 len ceil32(_2907) + 32]
                else:
                    mem[ceil32(_1911) + mem[64] + (32 * _1475) + _2339 + 324] = 0
                    _2787 = mem[64]
                    mem[mem[64]] = ceil32(_2339) + ceil32(_1911) + (32 * _1475) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2339) + ceil32(_1911) + mem[64] + (32 * _1475) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 392] = 96
                    _2915 = mem[_2787]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424] = mem[_2787]
                    mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 456 len ceil32(_2915)] = mem[_2787 + 32 len ceil32(_2915)]
                    if ceil32(_2915) > _2915:
                        mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + _2915 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2339) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424 len ceil32(_2915) + 32]
            else:
                mem[mem[64] + (32 * _1475) + _1911 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1911) + (32 * _1475) + 256
                _2343 = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1911) + mem[64] + (32 * _1475) + 292] = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1911) + mem[64] + (32 * _1475) + 324 len ceil32(_2343)] = mem[_1023 + ceil32(return_data.size) + 32 len ceil32(_2343)]
                if ceil32(_2343) <= _2343:
                    _2766 = mem[64]
                    mem[mem[64]] = ceil32(_2343) + ceil32(_1911) + (32 * _1475) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 392] = 96
                    _2908 = mem[_2766]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424] = mem[_2766]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 456 len ceil32(_2908)] = mem[_2766 + 32 len ceil32(_2908)]
                    if ceil32(_2908) > _2908:
                        mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + _2908 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424 len ceil32(_2908) + 32]
                else:
                    mem[ceil32(_1911) + mem[64] + (32 * _1475) + _2343 + 324] = 0
                    _2790 = mem[64]
                    mem[mem[64]] = ceil32(_2343) + ceil32(_1911) + (32 * _1475) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2343) + ceil32(_1911) + mem[64] + (32 * _1475) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 392] = 96
                    _2916 = mem[_2790]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424] = mem[_2790]
                    mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 456 len ceil32(_2916)] = mem[_2790 + 32 len ceil32(_2916)]
                    if ceil32(_2916) > _2916:
                        mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + _2916 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2343) + ceil32(_1911) + _1471 + (32 * _1475) + ceil32(return_data.size) + 424 len ceil32(_2916) + 32]
        else:
            mem[_1023 + ceil32(return_data.size) + _1027 + 32] = 0
            _1473 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_556)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1477 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1477:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1477) + 224
            _1912 = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1477) + 260] = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1477) + 292 len ceil32(_1912)] = mem[_563 + ceil32(return_data.size) + 32 len ceil32(_1912)]
            if ceil32(_1912) <= _1912:
                mem[mem[64] + 196] = ceil32(_1912) + (32 * _1477) + 256
                _2340 = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1912) + mem[64] + (32 * _1477) + 292] = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1912) + mem[64] + (32 * _1477) + 324 len ceil32(_2340)] = mem[_1023 + ceil32(return_data.size) + 32 len ceil32(_2340)]
                if ceil32(_2340) <= _2340:
                    _2769 = mem[64]
                    mem[mem[64]] = ceil32(_2340) + ceil32(_1912) + (32 * _1477) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 392] = 96
                    _2909 = mem[_2769]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424] = mem[_2769]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 456 len ceil32(_2909)] = mem[_2769 + 32 len ceil32(_2909)]
                    if ceil32(_2909) > _2909:
                        mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + _2909 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424 len ceil32(_2909) + 32]
                else:
                    mem[ceil32(_1912) + mem[64] + (32 * _1477) + _2340 + 324] = 0
                    _2793 = mem[64]
                    mem[mem[64]] = ceil32(_2340) + ceil32(_1912) + (32 * _1477) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2340) + ceil32(_1912) + mem[64] + (32 * _1477) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 392] = 96
                    _2917 = mem[_2793]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424] = mem[_2793]
                    mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 456 len ceil32(_2917)] = mem[_2793 + 32 len ceil32(_2917)]
                    if ceil32(_2917) > _2917:
                        mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + _2917 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2340) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424 len ceil32(_2917) + 32]
            else:
                mem[mem[64] + (32 * _1477) + _1912 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1912) + (32 * _1477) + 256
                _2344 = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1912) + mem[64] + (32 * _1477) + 292] = mem[_1023 + ceil32(return_data.size)]
                mem[ceil32(_1912) + mem[64] + (32 * _1477) + 324 len ceil32(_2344)] = mem[_1023 + ceil32(return_data.size) + 32 len ceil32(_2344)]
                if ceil32(_2344) <= _2344:
                    _2772 = mem[64]
                    mem[mem[64]] = ceil32(_2344) + ceil32(_1912) + (32 * _1477) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 392] = 96
                    _2910 = mem[_2772]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424] = mem[_2772]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 456 len ceil32(_2910)] = mem[_2772 + 32 len ceil32(_2910)]
                    if ceil32(_2910) > _2910:
                        mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + _2910 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424 len ceil32(_2910) + 32]
                else:
                    mem[ceil32(_1912) + mem[64] + (32 * _1477) + _2344 + 324] = 0
                    _2796 = mem[64]
                    mem[mem[64]] = ceil32(_2344) + ceil32(_1912) + (32 * _1477) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2344) + ceil32(_1912) + mem[64] + (32 * _1477) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 392] = 96
                    _2918 = mem[_2796]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424] = mem[_2796]
                    mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 456 len ceil32(_2918)] = mem[_2796 + 32 len ceil32(_2918)]
                    if ceil32(_2918) > _2918:
                        mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + _2918 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2344) + ceil32(_1912) + _1473 + (32 * _1477) + ceil32(return_data.size) + 424 len ceil32(_2918) + 32]
    else:
        mem[_563 + ceil32(return_data.size) + _565 + 32] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1024 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1026 = mem[_1024]
        require mem[_1024] <= test266151307()
        require _1024 + mem[_1024] + 31 < _1024 + return_data.size
        _1029 = mem[_1024 + mem[_1024]]
        require mem[_1024 + mem[_1024]] <= test266151307()
        require ceil32(mem[_1024 + mem[_1024]]) + 32 >= 0 and _1024 + ceil32(return_data.size) + ceil32(mem[_1024 + mem[_1024]]) + 32 <= test266151307()
        mem[64] = _1024 + ceil32(return_data.size) + ceil32(mem[_1024 + mem[_1024]]) + 32
        mem[_1024 + ceil32(return_data.size)] = _1029
        require return_data.size >= _1029 + _1026 + 32
        mem[_1024 + ceil32(return_data.size) + 32 len ceil32(_1029)] = mem[_1024 + _1026 + 32 len ceil32(_1029)]
        if ceil32(_1029) <= _1029:
            _1472 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_556)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1476 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1476:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1476) + 224
            _1913 = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1476) + 260] = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1476) + 292 len ceil32(_1913)] = mem[_563 + ceil32(return_data.size) + 32 len ceil32(_1913)]
            if ceil32(_1913) <= _1913:
                mem[mem[64] + 196] = ceil32(_1913) + (32 * _1476) + 256
                _2341 = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1913) + mem[64] + (32 * _1476) + 292] = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1913) + mem[64] + (32 * _1476) + 324 len ceil32(_2341)] = mem[_1024 + ceil32(return_data.size) + 32 len ceil32(_2341)]
                if ceil32(_2341) <= _2341:
                    _2775 = mem[64]
                    mem[mem[64]] = ceil32(_2341) + ceil32(_1913) + (32 * _1476) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 392] = 96
                    _2911 = mem[_2775]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424] = mem[_2775]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 456 len ceil32(_2911)] = mem[_2775 + 32 len ceil32(_2911)]
                    if ceil32(_2911) > _2911:
                        mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + _2911 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424 len ceil32(_2911) + 32]
                else:
                    mem[ceil32(_1913) + mem[64] + (32 * _1476) + _2341 + 324] = 0
                    _2799 = mem[64]
                    mem[mem[64]] = ceil32(_2341) + ceil32(_1913) + (32 * _1476) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2341) + ceil32(_1913) + mem[64] + (32 * _1476) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 392] = 96
                    _2919 = mem[_2799]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424] = mem[_2799]
                    mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 456 len ceil32(_2919)] = mem[_2799 + 32 len ceil32(_2919)]
                    if ceil32(_2919) > _2919:
                        mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + _2919 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2341) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424 len ceil32(_2919) + 32]
            else:
                mem[mem[64] + (32 * _1476) + _1913 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1913) + (32 * _1476) + 256
                _2345 = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1913) + mem[64] + (32 * _1476) + 292] = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1913) + mem[64] + (32 * _1476) + 324 len ceil32(_2345)] = mem[_1024 + ceil32(return_data.size) + 32 len ceil32(_2345)]
                if ceil32(_2345) <= _2345:
                    _2778 = mem[64]
                    mem[mem[64]] = ceil32(_2345) + ceil32(_1913) + (32 * _1476) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 392] = 96
                    _2912 = mem[_2778]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424] = mem[_2778]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 456 len ceil32(_2912)] = mem[_2778 + 32 len ceil32(_2912)]
                    if ceil32(_2912) > _2912:
                        mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + _2912 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424 len ceil32(_2912) + 32]
                else:
                    mem[ceil32(_1913) + mem[64] + (32 * _1476) + _2345 + 324] = 0
                    _2802 = mem[64]
                    mem[mem[64]] = ceil32(_2345) + ceil32(_1913) + (32 * _1476) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2345) + ceil32(_1913) + mem[64] + (32 * _1476) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 392] = 96
                    _2920 = mem[_2802]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424] = mem[_2802]
                    mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 456 len ceil32(_2920)] = mem[_2802 + 32 len ceil32(_2920)]
                    if ceil32(_2920) > _2920:
                        mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + _2920 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2345) + ceil32(_1913) + _1472 + (32 * _1476) + ceil32(return_data.size) + 424 len ceil32(_2920) + 32]
        else:
            mem[_1024 + ceil32(return_data.size) + _1029 + 32] = 0
            _1474 = mem[64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = address(_556)
            mem[mem[64] + 100] = stor363
            mem[mem[64] + 132] = 192
            _1478 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 228] = mem[ceil32(return_data.size) + 288]
            idx = 0
            s = ceil32(return_data.size) + 320
            t = mem[64] + 260
            while idx < _1478:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 164] = (32 * _1478) + 224
            _1914 = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1478) + 260] = mem[_563 + ceil32(return_data.size)]
            mem[mem[64] + (32 * _1478) + 292 len ceil32(_1914)] = mem[_563 + ceil32(return_data.size) + 32 len ceil32(_1914)]
            if ceil32(_1914) <= _1914:
                mem[mem[64] + 196] = ceil32(_1914) + (32 * _1478) + 256
                _2342 = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1914) + mem[64] + (32 * _1478) + 292] = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1914) + mem[64] + (32 * _1478) + 324 len ceil32(_2342)] = mem[_1024 + ceil32(return_data.size) + 32 len ceil32(_2342)]
                if ceil32(_2342) <= _2342:
                    _2781 = mem[64]
                    mem[mem[64]] = ceil32(_2342) + ceil32(_1914) + (32 * _1478) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 392] = 96
                    _2913 = mem[_2781]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424] = mem[_2781]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 456 len ceil32(_2913)] = mem[_2781 + 32 len ceil32(_2913)]
                    if ceil32(_2913) > _2913:
                        mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + _2913 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424 len ceil32(_2913) + 32]
                else:
                    mem[ceil32(_1914) + mem[64] + (32 * _1478) + _2342 + 324] = 0
                    _2805 = mem[64]
                    mem[mem[64]] = ceil32(_2342) + ceil32(_1914) + (32 * _1478) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2342) + ceil32(_1914) + mem[64] + (32 * _1478) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 392] = 96
                    _2921 = mem[_2805]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424] = mem[_2805]
                    mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 456 len ceil32(_2921)] = mem[_2805 + 32 len ceil32(_2921)]
                    if ceil32(_2921) > _2921:
                        mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + _2921 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2342) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424 len ceil32(_2921) + 32]
            else:
                mem[mem[64] + (32 * _1478) + _1914 + 292] = 0
                mem[mem[64] + 196] = ceil32(_1914) + (32 * _1478) + 256
                _2346 = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1914) + mem[64] + (32 * _1478) + 292] = mem[_1024 + ceil32(return_data.size)]
                mem[ceil32(_1914) + mem[64] + (32 * _1478) + 324 len ceil32(_2346)] = mem[_1024 + ceil32(return_data.size) + 32 len ceil32(_2346)]
                if ceil32(_2346) <= _2346:
                    _2784 = mem[64]
                    mem[mem[64]] = ceil32(_2346) + ceil32(_1914) + (32 * _1478) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 392] = 96
                    _2914 = mem[_2784]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424] = mem[_2784]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 456 len ceil32(_2914)] = mem[_2784 + 32 len ceil32(_2914)]
                    if ceil32(_2914) > _2914:
                        mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + _2914 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424 len ceil32(_2914) + 32]
                else:
                    mem[ceil32(_1914) + mem[64] + (32 * _1478) + _2346 + 324] = 0
                    _2808 = mem[64]
                    mem[mem[64]] = ceil32(_2346) + ceil32(_1914) + (32 * _1478) + 292
                    mem[mem[64] + 32 len 4] = 519780294
                    mem[ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + 324 len 2371] = code.data[10587 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(0, address(arg1), address(arg2), address(arg3))
                                    code: code.data[10587 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_7bfc2313Address)
                    call sub_7bfc2313Address.getPairImplementation() with:
                         gas gas_remaining wei
                    mem[ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + 324] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_2346) + ceil32(_1914) + mem[64] + (32 * _1478) + ceil32(return_data.size) + 324
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 324] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 328] = address(ext_call.return_data[0])
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 360] = this.address
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 392] = 96
                    _2922 = mem[_2808]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424] = mem[_2808]
                    mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 456 len ceil32(_2922)] = mem[_2808 + 32 len ceil32(_2922)]
                    if ceil32(_2922) > _2922:
                        mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + _2922 + 456] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_2346) + ceil32(_1914) + _1474 + (32 * _1478) + ceil32(return_data.size) + 424 len ceil32(_2922) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_870bd025[address(arg1)][address(arg2)][address(arg3)] = address(create2.new_address)
    stor366[address(create2.new_address)] = 1
    return address(create2.new_address)
}



}
