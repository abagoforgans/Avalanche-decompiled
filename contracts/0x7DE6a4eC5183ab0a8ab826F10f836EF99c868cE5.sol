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
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe5b524241435d203a2041646d696e206d75737420626520213d207468616e2030783020616464726573,
                    mem[206 len 22]
    if stor1[address(arg1)]:
        revert with 0, '[RBAC] : Admin already exists.'
    admins.length++
    admins[admins.length].field_0 = arg1
    stor1[address(arg1)] = 1
}

function getAllAdmins() payable {
    if not admins.length:
        mem[(32 * admins.length) + 128] = 32
        mem[(32 * admins.length) + 160] = admins.length
        mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
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
    mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
    return Array(len=admins.length, data=mem[128 len floor32(admins.length)], mem[(32 * admins.length) + floor32(admins.length) + 192 len (32 * admins.length) - floor32(admins.length)]), 
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'not admin'
    require bool(stor1[address(arg1)]) == 1
    require var10001 < admins.length
    if admins[var12001].field_0 != arg1:
        idx = var12004
        while idx != admins.length:
            require idx + 1 < admins.length
            mem[0] = 0
            if admins[idx].field_256 != arg1:
                idx = idx + 1
                continue 
            require admins.length - 1 < admins.length
            require idx + 1 < admins.length
            admins[idx].field_256 = admins[admins.length].field_0
            stor1[address(arg1)] = 0
            require admins.length
            admins[admins.length].field_0 = 0
            admins.length--
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x735061737365642061646d696e206164647265737320646f6573206e6f742065786973,
                    mem[199 len 29]
    require admins.length - 1 < admins.length
    require var12004 < admins.length
    admins[var12004].field_0 = admins[admins.length].field_0
    stor1[address(arg1)] = 0
    require admins.length
    admins[admins.length].field_0 = 0
    admins.length--
}



}
