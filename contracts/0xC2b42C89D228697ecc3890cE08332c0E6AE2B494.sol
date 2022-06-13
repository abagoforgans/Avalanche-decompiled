contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1453]




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    revert
}

function History(uint256 arg1) {
    require arg1 < stor0.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32)]),
           uint256(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768)
}

function AddMessage(address arg1, uint256 arg2, string arg3) {
    stor1 = arg1
    stor4 = block.timestamp
    stor3 = arg2
    uint256(stor2[]) = Array(len=arg3.length, data=arg3[all])
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = 4 * stor0.length + 1
        while sha3(0) + (4 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 4
            continue 
    address(stor0[stor0.length].field_0) = stor1
    if 31 >= stor2.length:
        uint256(stor0[stor0.length].field_256) = stor2.length
        idx = 0
        while stor[(4 * stor0.length) + ('name', 'stor0', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        uint256(stor0[stor0.length].field_256) = Mask(255, 1, (256 * not bool(stor2.length)) - 1 and stor2.length) + 1
        if not Mask(255, 1, (256 * not bool(stor2.length)) - 1 and stor2.length):
            idx = 0
            while stor[(4 * stor0.length) + ('name', 'stor0', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2.length + 31 / 32 > idx:
                uint256(stor[s + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = uint256(stor2[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2.length + 31 / 32
            while stor[(4 * stor0.length) + ('name', 'stor0', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor0[stor0.length].field_512) = stor3
    uint256(stor0[stor0.length].field_768) = stor4
}



}
