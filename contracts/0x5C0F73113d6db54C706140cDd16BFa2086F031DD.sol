contract main {




// =====================  Runtime code  =====================


#
#  - sub_2cd7a2cd(?)
#
const sub_61673e28(?) = 10000

const MAX_TOTAL_SUPPLY = 7812


address owner;
address sub_5aea9164Address;
mapping of struct sub_864e6876;
array of struct sub_86525ed8;
mapping of struct sub_cdbefa8d;
uint256 sub_f3682226;
uint256 sub_bb2cfb59;
uint256 sub_e688482d;
array of uint256 sub_659fa10e;
array of uint256 sub_7d4a658f;
uint256 stor23;
uint256 stor24;
uint256 stor25;
mapping of uint8 stor26;
mapping of struct stor28;
array of struct stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;

function sub_5aea9164(?) payable {
    return sub_5aea9164Address
}

function sub_659fa10e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_659fa10e.length
    return sub_659fa10e[arg1]
}

function sub_7d4a658f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d4a658f.length
    return sub_7d4a658f[arg1]
}

function sub_864e6876(?) payable {
    require calldata.size - 4 >= 32
    return sub_864e6876[arg1].field_0, sub_864e6876[arg1].field_256, sub_864e6876[arg1].field_512, sub_864e6876[arg1].field_768
}

function sub_86525ed8(?) payable {
    require calldata.size - 4 >= 32
    return sub_86525ed8[arg1].field_0, sub_86525ed8[arg1].field_256, sub_86525ed8[arg1].field_768
}

function owner() payable {
    return owner
}

function sub_bb2cfb59(?) payable {
    return sub_bb2cfb59
}

function sub_cdbefa8d(?) payable {
    require calldata.size - 4 >= 32
    return sub_cdbefa8d[arg1].field_0, sub_cdbefa8d[arg1].field_256, sub_cdbefa8d[arg1].field_512, sub_cdbefa8d[arg1].field_768
}

function sub_e688482d(?) payable {
    return sub_e688482d
}

function sub_f3682226(?) payable {
    return sub_f3682226
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

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = 0
}

function sub_4bacae66(?) payable {
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    sub_e688482d = block.number
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2393c58(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if arg1 < 1:
        revert with 0, 'Not enough draws per transaction'
    stor24 = arg1
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

function sub_15fbee47(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if not arg1 - 10000:
        revert with 0, 'Rate drop too high'
    if arg1 % 100:
        revert with 0, 'Rate drop not a multiple of 100'
    sub_f3682226 = arg1
}

function sub_abb9d112(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if arg1 <= 0:
        revert with 0, 'Giveaway ID not valid'
    if arg1 > stor23:
        revert with 0, 'Giveaway ID not valid'
    if arg2 <= 1:
        revert with 0, 'Random Number not valid'
    sub_cdbefa8d[arg1].field_256 = arg2
}

function sub_acd0bd85(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if arg1 <= 0:
        revert with 0, 'Minimum win rate can not be 0'
    if arg1 % 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum win rate not a multiple of 100'
    sub_bb2cfb59 = arg1
}

function sub_c604e275(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 >= 7812:
        revert with 0, 'tokenId not valid'
    if sub_86525ed8[arg1].field_256:
        if sub_86525ed8[arg1].field_256 < 1:
            revert with 0, 17
        sub_86525ed8[arg1].field_256--
}

function sub_12b48e4d(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 >= 7812:
        revert with 0, 'tokenId not valid'
    if sub_86525ed8[arg1].field_512:
        mem[256] = sub_86525ed8[arg1][2].field_0
        idx = 256
        s = 0
        while (32 * sub_86525ed8[arg1].field_512) + 224 > idx:
            mem[idx + 32] = sub_86525ed8[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_86525ed8[arg1].field_512, data=mem[256 len 32 * sub_86525ed8[arg1].field_512])
}

function sub_b48f661a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if stor30[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokenId already exists for legendary'
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 > 7812:
        revert with 0, 'tokenId not valid'
    stor30[arg1] = 1
    sub_659fa10e.length++
    sub_659fa10e[sub_659fa10e.length] = arg1
}

function sub_91406472(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if stor31[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokenId already exists for blacklist'
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 >= 7812:
        revert with 0, 'tokenId not valid'
    stor31[arg1] = 1
    sub_7d4a658f.length++
    sub_7d4a658f[sub_7d4a658f.length] = arg1
}

function sub_649a2dc3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if not stor30[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokenId does not exist for legendary'
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 > 7812:
        revert with 0, 'tokenId not valid'
    stor30[arg1] = 0
    idx = 0
    while idx < sub_659fa10e.length:
        mem[0] = 9
        if sub_659fa10e[idx] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_659fa10e.length:
            revert with 0, 50
        sub_659fa10e[idx] = 0
}

function sub_cd9d552c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    if not stor31[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokenId does not exist for blacklist'
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 >= 7812:
        revert with 0, 'tokenId not valid'
    stor31[arg1] = 0
    idx = 0
    while idx < sub_7d4a658f.length:
        mem[0] = 10
        if sub_7d4a658f[idx] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_7d4a658f.length:
            revert with 0, 50
        sub_7d4a658f[idx] = 0
}

function sub_329fed5c(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor26[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not an admin or contract owner'
    staticcall sub_5aea9164Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < 1:
        revert with 0, 'Not enough winners'
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Too many winners'
    if arg2 < 1:
        revert with 0, 'Random number is invalid'
    if stor23 > -2:
        revert with 0, 17
    stor23++
    stor25 = 0
    sub_cdbefa8d[stor23].field_0 = stor23
    sub_cdbefa8d[stor23].field_256 = arg2
    sub_cdbefa8d[stor23].field_512 = arg1
    sub_cdbefa8d[stor23].field_768 = block.timestamp
}

function sub_eebd41c7(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'tokenId not valid'
    if arg1 >= 7812:
        revert with 0, 'tokenId not valid'
    if sub_86525ed8[arg1].field_512:
        idx = 256
        s = 0
        while (32 * sub_86525ed8[arg1].field_512) + 224 > idx:
            mem[idx + 32] = sub_86525ed8[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if 0 == sub_86525ed8[arg1].field_0:
        return 100
    if sub_86525ed8[arg1].field_768 < sub_e688482d:
        return 100
    if sub_86525ed8[arg1].field_256 and sub_f3682226 > -1 / sub_86525ed8[arg1].field_256:
        revert with 0, 17
    if sub_86525ed8[arg1].field_256 * sub_f3682226 > 10000:
        if 0 >= sub_bb2cfb59:
            return 0
    else:
        if 10000 < sub_86525ed8[arg1].field_256 * sub_f3682226:
            revert with 0, 17
        if (-1 * sub_86525ed8[arg1].field_256 * sub_f3682226) + 10000 >= sub_bb2cfb59:
            return ((-1 * sub_86525ed8[arg1].field_256 * sub_f3682226) + 10000 / 100)
    return (sub_bb2cfb59 / 100)
}

function sub_01433ac1(?) payable {
    require calldata.size - 4 >= 32
    if sub_cdbefa8d[arg1].field_512 > test266151307():
        revert with 0, 65
    if stor28[arg1].field_0:
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 288] = stor28[arg1].field_0
        idx = (32 * sub_cdbefa8d[arg1].field_512) + 288
        s = 0
        while (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor28[arg1].field_0) + 256 > idx:
            mem[idx + 32] = stor28[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor28[arg1].field_0, data=mem[(32 * sub_cdbefa8d[arg1].field_512) + 288 len 32 * stor28[arg1].field_0])
    mem[(32 * sub_cdbefa8d[arg1].field_512) + (32 * stor28[arg1].field_0) + 288] = 32
    mem[(32 * sub_cdbefa8d[arg1].field_512) + (32 * stor28[arg1].field_0) + 320] = stor28[arg1].field_0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + (32 * stor28[arg1].field_0) + 352 len 32 * stor28[arg1].field_0] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 288 len 32 * stor28[arg1].field_0]
    return memory
      from (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor28[arg1].field_0) + 288
       len (96 * stor28[arg1].field_0) + 64
}

function sub_2f6f26ed(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[96] = sub_cdbefa8d[arg1].field_0
    mem[128] = sub_cdbefa8d[arg1].field_256
    mem[160] = sub_cdbefa8d[arg1].field_512
    mem[192] = sub_cdbefa8d[arg1].field_768
    if sub_cdbefa8d[arg1].field_512 > test266151307():
        revert with 0, 65
    mem[224] = sub_cdbefa8d[arg1].field_512
    if not sub_cdbefa8d[arg1].field_512:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 288
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 256] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 288
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _31 = mem[64]
            mem[64] = mem[64] + 128
            mem[_31] = stor29[arg1][idx].field_0
            mem[_31 + 32] = stor29[arg1][idx].field_256
            mem[_31 + 64] = stor29[arg1][idx].field_512
            mem[_31 + 96] = stor29[arg1][idx].field_768
            mem[s] = _31
            s = s + 32
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _34 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 256]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 256]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 288
        t = mem[64] + 64
        while idx < _34:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 32]
            mem[t + 64] = mem[_53 + 64]
            mem[t + 96] = mem[_53 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _32 + (128 * _34) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 256] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 288] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 320] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 352] = 0
    mem[var12002] = var12001
    if not var12003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 416
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 384] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 416
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _86 = mem[64]
            mem[64] = mem[64] + 128
            mem[_86] = stor29[arg1][idx].field_0
            mem[_86 + 32] = stor29[arg1][idx].field_256
            mem[_86 + 64] = stor29[arg1][idx].field_512
            mem[_86 + 96] = stor29[arg1][idx].field_768
            mem[s] = _86
            s = s + 32
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _91 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 384]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 384]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 416
        t = mem[64] + 64
        while idx < _91:
            _109 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_109 + 32]
            mem[t + 64] = mem[_109 + 64]
            mem[t + 96] = mem[_109 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _88 + (128 * _91) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 384] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 416] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 448] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 480] = 0
    mem[var16002] = var16001
    if not var16003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 544
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 512] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 544
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _141 = mem[64]
            mem[64] = mem[64] + 128
            mem[_141] = stor29[arg1][idx].field_0
            mem[_141 + 32] = stor29[arg1][idx].field_256
            mem[_141 + 64] = stor29[arg1][idx].field_512
            mem[_141 + 96] = stor29[arg1][idx].field_768
            mem[s] = _141
            s = s + 32
            idx = idx + 1
            continue 
        _143 = mem[64]
        mem[mem[64]] = 32
        _146 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 512]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 512]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 544
        t = mem[64] + 64
        while idx < _146:
            _164 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_164 + 32]
            mem[t + 64] = mem[_164 + 64]
            mem[t + 96] = mem[_164 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _143 + (128 * _146) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 512] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 544] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 576] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 608] = 0
    mem[var20002] = var20001
    if not var20003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 672
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 640] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 672
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _196 = mem[64]
            mem[64] = mem[64] + 128
            mem[_196] = stor29[arg1][idx].field_0
            mem[_196 + 32] = stor29[arg1][idx].field_256
            mem[_196 + 64] = stor29[arg1][idx].field_512
            mem[_196 + 96] = stor29[arg1][idx].field_768
            mem[s] = _196
            s = s + 32
            idx = idx + 1
            continue 
        _198 = mem[64]
        mem[mem[64]] = 32
        _201 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 640]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 640]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 672
        t = mem[64] + 64
        while idx < _201:
            _219 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_219 + 32]
            mem[t + 64] = mem[_219 + 64]
            mem[t + 96] = mem[_219 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _198 + (128 * _201) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 640] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 672] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 704] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 736] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 800
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 768] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 800
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _251 = mem[64]
            mem[64] = mem[64] + 128
            mem[_251] = stor29[arg1][idx].field_0
            mem[_251 + 32] = stor29[arg1][idx].field_256
            mem[_251 + 64] = stor29[arg1][idx].field_512
            mem[_251 + 96] = stor29[arg1][idx].field_768
            mem[s] = _251
            s = s + 32
            idx = idx + 1
            continue 
        _253 = mem[64]
        mem[mem[64]] = 32
        _256 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 768]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 768]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 800
        t = mem[64] + 64
        while idx < _256:
            _274 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_274 + 32]
            mem[t + 64] = mem[_274 + 64]
            mem[t + 96] = mem[_274 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _253 + (128 * _256) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 768] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 800] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 832] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 864] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 928
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 896] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 928
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _306 = mem[64]
            mem[64] = mem[64] + 128
            mem[_306] = stor29[arg1][idx].field_0
            mem[_306 + 32] = stor29[arg1][idx].field_256
            mem[_306 + 64] = stor29[arg1][idx].field_512
            mem[_306 + 96] = stor29[arg1][idx].field_768
            mem[s] = _306
            s = s + 32
            idx = idx + 1
            continue 
        _308 = mem[64]
        mem[mem[64]] = 32
        _311 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 896]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 896]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 928
        t = mem[64] + 64
        while idx < _311:
            _329 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_329 + 32]
            mem[t + 64] = mem[_329 + 64]
            mem[t + 96] = mem[_329 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _308 + (128 * _311) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 896] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 928] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 960] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 992] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 1056
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 1024] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1056
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _361 = mem[64]
            mem[64] = mem[64] + 128
            mem[_361] = stor29[arg1][idx].field_0
            mem[_361 + 32] = stor29[arg1][idx].field_256
            mem[_361 + 64] = stor29[arg1][idx].field_512
            mem[_361 + 96] = stor29[arg1][idx].field_768
            mem[s] = _361
            s = s + 32
            idx = idx + 1
            continue 
        _363 = mem[64]
        mem[mem[64]] = 32
        _366 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1024]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1024]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1056
        t = mem[64] + 64
        while idx < _366:
            _384 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_384 + 32]
            mem[t + 64] = mem[_384 + 64]
            mem[t + 96] = mem[_384 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _363 + (128 * _366) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1024] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1056] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1088] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1120] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 1184
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 1152] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1184
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _416 = mem[64]
            mem[64] = mem[64] + 128
            mem[_416] = stor29[arg1][idx].field_0
            mem[_416 + 32] = stor29[arg1][idx].field_256
            mem[_416 + 64] = stor29[arg1][idx].field_512
            mem[_416 + 96] = stor29[arg1][idx].field_768
            mem[s] = _416
            s = s + 32
            idx = idx + 1
            continue 
        _418 = mem[64]
        mem[mem[64]] = 32
        _421 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1152]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1152]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1184
        t = mem[64] + 64
        while idx < _421:
            _439 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_439 + 32]
            mem[t + 64] = mem[_439 + 64]
            mem[t + 96] = mem[_439 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _418 + (128 * _421) + -mem[64] + 64
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1152] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1184] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1216] = 0
    mem[(32 * sub_cdbefa8d[arg1].field_512) + 1248] = 0
    mem[var40002] = var40001
    if var40003 - 1:
        mem[var44002] = var44001
        if not var44003 - 1:
            mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 1440
            s = (32 * sub_cdbefa8d[arg1].field_512) + 1440
            idx = 0
            while idx < stor29[arg1].field_0:
                mem[0] = sha3(arg1, 29)
                _526 = mem[64]
                mem[64] = mem[64] + 128
                mem[_526] = stor29[arg1][idx].field_0
                mem[_526 + 32] = stor29[arg1][idx].field_256
                mem[_526 + 64] = stor29[arg1][idx].field_512
                mem[_526 + 96] = stor29[arg1][idx].field_768
                mem[s] = _526
                s = s + 32
                idx = idx + 1
                continue 
        # nil
    else:
        mem[0] = arg1
        mem[32] = 29
        mem[64] = (32 * sub_cdbefa8d[arg1].field_512) + (32 * stor29[arg1].field_0) + 1312
        mem[(32 * sub_cdbefa8d[arg1].field_512) + 1280] = stor29[arg1].field_0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1312
        idx = 0
        while idx < stor29[arg1].field_0:
            mem[0] = sha3(arg1, 29)
            _471 = mem[64]
            mem[64] = mem[64] + 128
            mem[_471] = stor29[arg1][idx].field_0
            mem[_471 + 32] = stor29[arg1][idx].field_256
            mem[_471 + 64] = stor29[arg1][idx].field_512
            mem[_471 + 96] = stor29[arg1][idx].field_768
            mem[s] = _471
            s = s + 32
            idx = idx + 1
            continue 
        _473 = mem[64]
        mem[mem[64]] = 32
        _476 = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1280]
        mem[mem[64] + 32] = mem[(32 * sub_cdbefa8d[arg1].field_512) + 1280]
        idx = 0
        s = (32 * sub_cdbefa8d[arg1].field_512) + 1312
        t = mem[64] + 64
        while idx < _476:
            _494 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_494 + 32]
            mem[t + 64] = mem[_494 + 64]
            mem[t + 96] = mem[_494 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _473 + (128 * _476) + -mem[64] + 64
}



}
