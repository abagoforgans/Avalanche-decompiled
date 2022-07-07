contract main {




// =====================  Runtime code  =====================


array of struct admins;
mapping of uint8 stor1;

function admins(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < admins.length
    return admins[arg1].field_0
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, 'Only admin can call.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[RBAC] : Admin must be != than 0x0 address'
    if stor1[address(arg1)]:
        revert with 0, '[RBAC] : Admin already exists.'
    admins.length++
    admins[admins.length].field_0 = arg1
    stor1[address(arg1)] = 1
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
    if not stor1[msg.sender]:
        revert with 0, 'Only admin can call.'
    require stor1[address(arg1)]
    if 1 >= admins.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can not remove all admins since contract becomes unusable.'
    if var17001 >= admins.length:
        revert with 0, 50
    if admins[var19001].field_0 != arg1:
        idx = var19004
        while idx != admins.length:
            if idx == -1:
                revert with 0, 17
            if idx + 1 >= admins.length:
                revert with 0, 50
            mem[0] = 0
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
            stor1[address(arg1)] = 0
            if not admins.length:
                revert with 0, 49
            admins[admins.length].field_0 = 0
            admins.length--
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Passed admin address does not exist'
    if admins.length < 1:
        revert with 0, 17
    if admins.length - 1 >= admins.length:
        revert with 0, 50
    if var19004 >= admins.length:
        revert with 0, 50
    admins[var19004].field_0 = admins[admins.length].field_0
    stor1[address(arg1)] = 0
    if not admins.length:
        revert with 0, 49
    admins[admins.length].field_0 = 0
    admins.length--
}



}
