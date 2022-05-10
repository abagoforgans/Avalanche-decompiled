contract main {




// =====================  Runtime code  =====================


#
#  - batchAbsorb(address arg1, address[] arg2)
#  - updateAirdropFee(address arg1, uint256 arg2)
#  - absorb(address arg1, address arg2)
#
const AIRDROP_MODULE_PROTOCOL_FEE_INDEX = 0


address controllerAddress;
array of address stor1;
array of struct airdropSettings;

function airdropSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(airdropSettings[arg1].field_256), 
           uint256(airdropSettings[arg1].field_512),
           bool(uint8(airdropSettings[arg1].field_768))
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function removeModule() payable {
    uint256(airdropSettings[msg.sender].field_0) = 0
    idx = 0
    while uint256(airdropSettings[msg.sender].field_0) > idx:
        uint256(airdropSettings[msg.sender][idx].field_0) = 0
        idx = idx + 1
        continue 
    address(airdropSettings[msg.sender].field_256) = 0
    uint256(airdropSettings[msg.sender].field_512) = 0
    uint8(airdropSettings[msg.sender].field_768) = 0
}

function isAirdropToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint256(airdropSettings[address(arg1)].field_0):
        mem[128] = address(airdropSettings[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(airdropSettings[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = address(airdropSettings[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < uint256(airdropSettings[address(arg1)].field_0):
        require idx < uint256(airdropSettings[address(arg1)].field_0)
        if mem[(32 * idx) + 140 len 20] != arg2:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function updateFeeRecipient(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if not arg2:
        revert with 0, 'Passed address must be non-zero'
    address(airdropSettings[address(arg1)].field_256) = arg2
}

function updateAnyoneAbsorb(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    uint256(airdropSettings[address(arg1)].field_768) = not uint8(airdropSettings[address(arg1)].field_768) or Mask(248, 8, uint256(airdropSettings[address(arg1)].field_768))
}

function getAirdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * uint256(airdropSettings[address(arg1)].field_0)) + 128
    mem[96] = uint256(airdropSettings[address(arg1)].field_0)
    if not uint256(airdropSettings[address(arg1)].field_0):
        mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 160] = uint256(airdropSettings[address(arg1)].field_0)
        idx = 0
        s = (32 * uint256(airdropSettings[address(arg1)].field_0)) + 192
        t = 128
        while idx < uint256(airdropSettings[address(arg1)].field_0):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(airdropSettings[address(arg1)].field_0)) + 128
           len (96 * uint256(airdropSettings[address(arg1)].field_0)) + 64
    mem[128] = address(airdropSettings[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(airdropSettings[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(airdropSettings[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128] = 32
    mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 160] = uint256(airdropSettings[address(arg1)].field_0)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(airdropSettings[address(arg1)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(airdropSettings[address(arg1)].field_0)) + -mem[64] + 192
}

function addAirdrop(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if uint256(airdropSettings[address(arg1)].field_0):
        mem[128] = address(airdropSettings[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(airdropSettings[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = address(airdropSettings[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < uint256(airdropSettings[address(arg1)].field_0):
        require idx < uint256(airdropSettings[address(arg1)].field_0)
        if mem[(32 * idx) + 140 len 20] == arg2:
            revert with 0, 'Token already added.'
        idx = idx + 1
        continue 
    uint256(airdropSettings[address(arg1)].field_0)++
    address(airdropSettings[address(arg1)][uint256(airdropSettings[address(arg1)].field_0)].field_0) = arg2
}

function initialize(address arg1, address[] arg2, address arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 128
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 35 < calldata.size
    require cd[(arg2 + arg2.length + 4)] <= test266151307()
    require (32 * cd[(arg2 + arg2.length + 4)]) + 256 >= 224 and (32 * cd[(arg2 + arg2.length + 4)]) + 256 <= test266151307()
    require calldata.size >= arg2 + arg2.length + (32 * cd[(arg2 + arg2.length + 4)]) + 36
    idx = 0
    s = arg2 + arg2.length + 36
    t = 256
    while idx < cd[(arg2 + arg2.length + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
    require cd[(arg2 + 100)] == bool(cd[(arg2 + 100)])
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0x694d75737420626520636f6e74726f6c6c65722d656e61626c656420446f6d616e,
                    mem[(32 * cd[(arg2 + arg2.length + 4)]) + 357 len 31]
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(32 * cd[(arg2 + arg2.length + 4)]) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be pending initialization'
    if not cd[(arg2 + arg2.length + 4)]:
        revert with 0, 'At least one token must be passed.'
    if cd[(arg2 + 68)] > 10^18:
        revert with 0, 'Fee must be <= 100%.'
    uint256(airdropSettings[address(arg1)].field_0) = cd[(arg2 + arg2.length + 4)]
    if not cd[(arg2 + arg2.length + 4)]:
        idx = 0
        while uint256(airdropSettings[address(arg1)].field_0) > idx:
            uint256(airdropSettings[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 256
        while (32 * cd[(arg2 + arg2.length + 4)]) + 256 > idx:
            address(airdropSettings[address(arg1)][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(arg2 + arg2.length + 4)]) + 31) >> 5
        while uint256(airdropSettings[address(arg1)].field_0) > idx:
            uint256(airdropSettings[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    address(airdropSettings[address(arg1)].field_256) = address(cd[(arg2 + 36)])
    uint256(airdropSettings[address(arg1)].field_512) = cd[(arg2 + 68)]
    uint8(airdropSettings[address(arg1)].field_768) = uint8(bool(cd[(arg2 + 100)]))
    require ext_code.size(arg1)
    call arg1.initializeModule() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeAirdrop(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[0] = arg1
    mem[32] = 2
    mem[64] = (32 * uint256(airdropSettings[address(arg1)].field_0)) + 128
    mem[96] = uint256(airdropSettings[address(arg1)].field_0)
    if uint256(airdropSettings[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 2)
        mem[128] = address(airdropSettings[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(airdropSettings[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = address(airdropSettings[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < uint256(airdropSettings[address(arg1)].field_0):
        require idx < uint256(airdropSettings[address(arg1)].field_0)
        if mem[(32 * idx) + 140 len 20] != arg2:
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        mem[64] = (64 * uint256(airdropSettings[address(arg1)].field_0)) + 160
        mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128] = uint256(airdropSettings[address(arg1)].field_0)
        if uint256(airdropSettings[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 2)
            mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 160] = address(airdropSettings[address(arg1)].field_0)
            idx = (32 * uint256(airdropSettings[address(arg1)].field_0)) + 160
            s = sha3(sha3(address(arg1), 2))
            while (64 * uint256(airdropSettings[address(arg1)].field_0)) + 128 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < uint256(airdropSettings[address(arg1)].field_0):
            require idx < uint256(airdropSettings[address(arg1)].field_0)
            if mem[(32 * idx) + (32 * uint256(airdropSettings[address(arg1)].field_0)) + 172 len 20] != arg2:
                idx = idx + 1
                continue 
            if idx >= uint256(airdropSettings[address(arg1)].field_0):
                revert with 0, 'Index must be < A length'
            require uint256(airdropSettings[address(arg1)].field_0) - 1 <= test266151307()
            mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160] = uint256(airdropSettings[address(arg1)].field_0) - 1
            if uint256(airdropSettings[address(arg1)].field_0) - 1:
                mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 192 len 32 * uint256(airdropSettings[address(arg1)].field_0) - 1] = call.data[calldata.size len 32 * uint256(airdropSettings[address(arg1)].field_0) - 1]
            s = 0
            while s < idx:
                require s < mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128]
                require s < uint256(airdropSettings[address(arg1)].field_0) - 1
                mem[(32 * s) + (64 * uint256(airdropSettings[address(arg1)].field_0)) + 192] = mem[(32 * s) + (32 * uint256(airdropSettings[address(arg1)].field_0)) + 172 len 20]
                s = s + 1
                continue 
            s = idx + 1
            while s < uint256(airdropSettings[address(arg1)].field_0):
                require s < mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128]
                require s - 1 < mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160]
                mem[(32 * s - 1) + (64 * uint256(airdropSettings[address(arg1)].field_0)) + 192] = mem[(32 * s) + (32 * uint256(airdropSettings[address(arg1)].field_0)) + 172 len 20]
                s = s + 1
                continue 
            require idx < mem[(32 * uint256(airdropSettings[address(arg1)].field_0)) + 128]
            uint256(airdropSettings[address(arg1)].field_0) = mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160]
            if not mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160]:
                idx = sha3(sha3(address(arg1), 2))
                while sha3(sha3(address(arg1), 2)) + uint256(airdropSettings[address(arg1)].field_0) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(address(arg1), 2))
                idx = (64 * uint256(airdropSettings[address(arg1)].field_0)) + 192
                while (64 * uint256(airdropSettings[address(arg1)].field_0)) + (32 * mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160]) + 192 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(arg1), 2)) + (Mask(251, 0, (32 * mem[(64 * uint256(airdropSettings[address(arg1)].field_0)) + 160]) + 31) >> 5)
                while sha3(sha3(address(arg1), 2)) + uint256(airdropSettings[address(arg1)].field_0) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        revert with 0, 'Address not in array.'
    revert with 0, 'Token not added.'
}



}
