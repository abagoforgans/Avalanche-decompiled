contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint64 stor0;
uint64 tokenLockerCount; offset 168
uint128 stor0; offset 160
address owner;
mapping of address tokenLock;
array of uint64 stor2;

function creationEnabled() payable {
    return bool(uint8(stor0.field_160))
}

function tokenLockerCount() payable {
    return tokenLockerCount
}

function owner() payable {
    return owner
}

function getTokenLockAddress(uint40 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 1099511627776
    return tokenLock[arg1 << 216]
}

function _fallback() payable {
    revert
}

function setCreationEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getLpData(uint40 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 1099511627776
    staticcall tokenLock[arg1 << 216].0xaf74e629 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[59 len 5]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32] << 216,
           address(ext_call.return_data[64]),
           address(ext_call.return_data[96]),
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getTokenLockData(uint40 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 1099511627776
    staticcall tokenLock[arg1 << 216].0x4c02bf0b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[59 len 5]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32] << 216,
           address(ext_call.return_data[64]),
           address(ext_call.return_data[96]),
           address(ext_call.return_data[128]),
           address(ext_call.return_data[160]),
           ext_call.return_data[192] << 216,
           ext_call.return_data[224] << 216,
           ext_call.return_data[256],
           ext_call.return_data[288]
}

function sub_83a1364a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor2[address(arg1)].field_0) + 128
    mem[96] = stor2[address(arg1)].field_0
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        idx = 0
        s = (32 * stor2[address(arg1)].field_0) + 192
        t = 128
        while idx < stor2[address(arg1)].field_0:
            mem[s] = mem[t + 27 len 5]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2[address(arg1)].field_0) + 128
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[128] = stor2[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor2[address(arg1)].field_8 * (-5 * s + 9 / 32) + s + (-1 * s + 9 / 32 * s) + 5
        idx = idx + 32
        s = (-5 * s + 9 / 32) + s + (-1 * s + 9 / 32 * s) + 5
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2[address(arg1)].field_0:
        mem[s] = mem[t + 27 len 5]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2[address(arg1)].field_0) + -mem[64] + 192
}

function sub_4c7ababd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1 % 1099511627776
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if tokenLock[arg1 << 216] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the locker contract can call this function'
    if address(arg3) != address(arg4):
        idx = 0
        while idx < stor2[address(arg3)].field_0:
            if idx >= stor2[address(arg3)].field_0:
                revert with 0, 50
            if stor2[address(arg3)][idx / 6].field_8 * 5 * idx % 6 != arg1 % 1099511627776:
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg3)
                mem[32] = 2
                idx = idx + 1
                continue 
            if stor2[address(arg3)].field_0 < 1:
                revert with 0, 17
            if stor2[address(arg3)].field_0 - 1 >= stor2[address(arg3)].field_0:
                revert with 0, 50
            if idx >= stor2[address(arg3)].field_0:
                revert with 0, 50
            stor2[address(arg3)][idx / 6].field_0 = stor2[address(arg3)][stor2[address(arg3)].field_0 - 1 / 6].field_8 * 5 * stor2[address(arg3)].field_0 - 1 % 6 * 256^(5 * idx % 6) or !(test266151307() * 256^(5 * idx % 6)) and stor2[address(arg3)][idx / 6].field_0
            if not stor2[address(arg3)].field_0:
                revert with 0, 49
            stor2[address(arg3)][stor2[address(arg3)].field_0 - 1 / 6].field_0 = !(test266151307() * 256^(5 * stor2[address(arg3)].field_0 - 1 % 6)) and stor2[address(arg3)][stor2[address(arg3)].field_0 - 1 / 6].field_0
            stor2[address(arg3)].field_0--
            idx = 0
            while idx < stor2[address(arg2)].field_0:
                if idx >= stor2[address(arg2)].field_0:
                    revert with 0, 50
                if stor2[address(arg2)][idx / 6].field_8 * 5 * idx % 6 == arg1 % 1099511627776:
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = 2
                idx = idx + 1
                continue 
            stor2[address(arg2)].field_0++
            stor2[address(arg2)][stor2[address(arg2)].field_0 / 6].field_0 = arg1 % 1099511627776 * 256^(5 * stor2[address(arg2)].field_0 % 6) or stor2[address(arg2)][stor2[address(arg2)].field_0 / 6].field_0 and !(test266151307() * 256^(5 * stor2[address(arg2)].field_0 % 6))
    idx = 0
    while idx < stor2[address(arg2)].field_0:
        if idx >= stor2[address(arg2)].field_0:
            revert with 0, 50
        if stor2[address(arg2)][idx / 6].field_8 * 5 * idx % 6 == arg1 % 1099511627776:
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg2)
        mem[32] = 2
        idx = idx + 1
        continue 
    stor2[address(arg2)].field_0++
    stor2[address(arg2)][stor2[address(arg2)].field_0 / 6].field_0 = arg1 % 1099511627776 * 256^(5 * stor2[address(arg2)].field_0 % 6) or stor2[address(arg2)][stor2[address(arg2)].field_0 / 6].field_0 and !(test266151307() * 256^(5 * stor2[address(arg2)].field_0 % 6))
}

function sub_cde7cced(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == arg3 % 1099511627776
    if not uint8(stor0.field_160):
        revert with 0, 'Locker creation is disabled'
    if tokenLockerCount == test266151307():
        revert with 0, 17
    tokenLockerCount = tokenLockerCount + 1 % 1099511627776
    create contract with 0 wei
                    code: code.data[4777 len 4980], address(this.address), stor0.field_0 % 1099511627776, msg.sender, address(arg1), arg3 << 216
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenLock[stor0.field_0 % 1099511627776] = address(create.new_address)
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2[msg.sender].field_0++
    stor2[msg.sender][stor2[msg.sender].field_0 / 6].field_0 = stor2[msg.sender][stor2[msg.sender].field_0 / 6].field_0 and !(test266151307() * 256^(5 * stor2[msg.sender].field_0 % 6)) or 256^(5 * stor2[msg.sender].field_0 % 6) * tokenLockerCount
    stor2[address(arg1)].field_0++
    stor2[address(arg1)][stor2[address(arg1)].field_0 / 6].field_0 = stor2[address(arg1)][stor2[address(arg1)].field_0 / 6].field_0 and !(test266151307() * 256^(5 * stor2[address(arg1)].field_0 % 6)) or tokenLockerCount * 256^(5 * stor2[address(arg1)].field_0 % 6)
    stor2[address(create.new_address)].field_0++
    stor2[address(create.new_address)][stor2[address(create.new_address)].field_0 / 6].field_0 = stor2[address(create.new_address)][stor2[address(create.new_address)].field_0 / 6].field_0 and !(test266151307() * 256^(5 * stor2[address(create.new_address)].field_0 % 6)) or tokenLockerCount * 256^(5 * stor2[address(create.new_address)].field_0 % 6)
    staticcall tokenLock[stor0.field_0 % 1099511627776].0xaf74e629 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[59 len 5]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    if ext_call.return_data[0]:
        stor2[ext_call.return_data[76 len 20]].field_0++
        stor2[ext_call.return_data[76 len 20]][stor2[ext_call.return_data[76 len 20]].field_0 / 6].field_0 = tokenLockerCount * 256^(5 * stor2[ext_call.return_data[76 len 20]].field_0 % 6) or !(test266151307() * 256^(5 * stor2[ext_call.return_data[76 len 20]].field_0 % 6)) and stor2[ext_call.return_data[76 len 20]][stor2[ext_call.return_data[76 len 20]].field_0 / 6].field_0
        stor2[address(ext_call.return_data[96])].field_0++
        stor2[address(ext_call.return_data[96])][stor2[address(ext_call.return_data[96])].field_0 / 6].field_0 = tokenLockerCount * 256^(5 * stor2[address(ext_call.return_data[96])].field_0 % 6) or !(test266151307() * 256^(5 * stor2[address(ext_call.return_data[96])].field_0 % 6)) and stor2[address(ext_call.return_data[96])][stor2[address(ext_call.return_data[96])].field_0 / 6].field_0
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x531cba00: stor0.field_0 % 1099511627776, msg.sender, ext_call.return_data[0], arg3 % 1099511627776, address(arg1), address(ext_call.return_data[64]), address(ext_call.return_data[96])
}



}
