contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
array of struct lastDeployed;
array of struct stor4;
uint256 sub_76743b6b;
address companyWalletAddress;

function companyWallet() payable {
    return companyWalletAddress
}

function getUnlockTime() payable {
    return unlockTime
}

function sub_76743b6b(?) payable {
    return sub_76743b6b
}

function owner() payable {
    return owner
}

function getLastDeployed(address arg1) payable {
    require calldata.size - 4 >= 32
    require lastDeployed[address(arg1)].field_0 - 1 < lastDeployed[address(arg1)].field_0
    return lastDeployed[address(arg1)][lastDeployed[address(arg1)].field_0].field_0
}

function _fallback() payable {
    revert
}

function sub_5e41ea56(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8543 len 32]
    sub_76743b6b = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8543 len 32]
    emit code.data[8575 len 32]: owner, 0
    owner = 0
}

function setCompanyWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8543 len 32]
    if not arg1:
        revert with 0, 'Invalid wallet address'
    companyWalletAddress = arg1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8543 len 32]
    stor1 = owner
    owner = 0
    unlockTime = arg1 + block.timestamp
    emit code.data[8575 len 32]: 0, 0
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[8607 len 35], mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit code.data[8575 len 32]: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8543 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[8505 len 38], mem[202 len 26]
    emit code.data[8575 len 32]: owner, arg1
    owner = arg1
}

function createTokenLocker(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[2404 len 6101], msg.sender, address(arg1), sub_76743b6b, companyWalletAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    lastDeployed[msg.sender].field_0++
    lastDeployed[msg.sender][lastDeployed[msg.sender].field_0].field_0 = address(create.new_address)
    stor4.length++
    stor4[stor4.length].field_0 = address(create.new_address)
    emit 0x758ba1a8: msg.sender, address(create.new_address)
    return address(create.new_address)
}

function getAllContracts() payable {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function getDeployed(address arg1) payable {
    require calldata.size - 4 >= 32
    if not lastDeployed[address(arg1)].field_0:
        mem[(32 * lastDeployed[address(arg1)].field_0) + 128] = 32
        mem[(32 * lastDeployed[address(arg1)].field_0) + 160] = lastDeployed[address(arg1)].field_0
        mem[(32 * lastDeployed[address(arg1)].field_0) + 192 len floor32(lastDeployed[address(arg1)].field_0)] = mem[128 len floor32(lastDeployed[address(arg1)].field_0)]
        return memory
          from (32 * lastDeployed[address(arg1)].field_0) + 128
           len (96 * lastDeployed[address(arg1)].field_0) + 64
    mem[128] = lastDeployed[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * lastDeployed[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = lastDeployed[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * lastDeployed[address(arg1)].field_0) + 192 len floor32(lastDeployed[address(arg1)].field_0)] = mem[128 len floor32(lastDeployed[address(arg1)].field_0)]
    return Array(len=lastDeployed[address(arg1)].field_0, data=mem[128 len floor32(lastDeployed[address(arg1)].field_0)], mem[(32 * lastDeployed[address(arg1)].field_0) + floor32(lastDeployed[address(arg1)].field_0) + 192 len (32 * lastDeployed[address(arg1)].field_0) - floor32(lastDeployed[address(arg1)].field_0)]), 
}



}
