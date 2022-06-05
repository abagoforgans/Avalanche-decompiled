contract main {




// =====================  Runtime code  =====================


const CheckBlockTimestamp = block.timestamp


address owner;
mapping of struct presales;
mapping of address presaleOwners;
address sub_06e29712Address;
uint256 ownerIndex;

function getNumberOfPresaleOwners() {
    return ownerIndex
}

function sub_06e29712(?) {
    return sub_06e29712Address
}

function presaleOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return presaleOwners[arg1]
}

function owner() {
    return owner
}

function presales(address arg1) {
    require calldata.size - 4 >= 32
    return bool(presales[arg1].field_0), 
           presales[arg1].field_256,
           presales[arg1].field_512,
           presales[arg1].field_768,
           bool(presales[arg1].field_928),
           presales[arg1].field_1024,
           presales[arg1].field_1280,
           presales[arg1].field_1536,
           presales[arg1].field_1792,
           presales[arg1].field_2048,
           presales[arg1].field_2304
}

function OwnerIndex() {
    return ownerIndex
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function updateFeeContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_06e29712Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_42120500(?) {
    require calldata.size - 4 >= 384
    require calldata.size > 35
    require 100 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 3:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 131
    require 164 <= calldata.size
    idx = 0
    s = 100
    t = 192
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 195
    require 356 <= calldata.size
    idx = 0
    s = 164
    t = 256
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[356] + mem[416] > 100:
        revert with 0, 'total percentages > 100!'
    mem[1120] = mem[140 len 20]
    mem[1152] = sub_06e29712Address
    presaleOwners[stor5] = mem[140 len 20]
    mem[1184 len 20765] = code.data[3525 len 20765]
    idx = 0
    s = 1120
    t = 22077
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[3525 len 20765], address(mem[160]), mem[320], mem[192 len 64], mem[22077 len 64], mem[288] >> 256, mem[352], mem[384], cd[356]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(mem[96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ownerIndex++
    presales[address(mem[128])].field_0 = 1
    presales[address(mem[128])].field_256 = block.timestamp
    presales[address(mem[128])].field_512 = mem[172 len 20]
    presales[address(mem[128])].field_768 = address(create.new_address)
    presales[address(mem[128])].field_928 = 1
    presales[address(mem[128])].field_1024 = mem[256]
    presales[address(mem[128])].field_1280 = mem[288]
    presales[address(mem[128])].field_1536 = mem[352]
    presales[address(mem[128])].field_1792 = mem[384]
    presales[address(mem[128])].field_2048 = mem[192]
    presales[address(mem[128])].field_2304 = mem[224]
    return address(create.new_address)
}



}
