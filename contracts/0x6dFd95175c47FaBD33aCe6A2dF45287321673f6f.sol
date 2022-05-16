contract main {




// =====================  Runtime code  =====================


const versionRecipient = ' '


address storeAddress;
address trustedForwarderAddress;
array of address sub_1ba91a5f;
mapping of uint8 stor3;
uint8 stor4;

function sub_1ba91a5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1ba91a5f.length
    return sub_1ba91a5f[arg1]
}

function isInitialized() payable {
    return bool(stor4)
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function store() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == trustedForwarderAddress)
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function sub_4fc7ad7e(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_1ba91a5f.length:
        mem[0] = 2
        mem[100] = arg1
        require ext_code.size(sub_1ba91a5f[idx])
        staticcall sub_1ba91a5f[idx].0xd5a849e9 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * sub_1ba91a5f.length)
}

function setTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if not arg1:
        revert with 0, 'trustedForwarder cannot be empty'
    trustedForwarderAddress = arg1
}

function addRewardDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if stor3[address(arg1)]:
        revert with 0, 'rewardDistributor already exist'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x647265776172644469737472696275746f722063616e6e6f7420626520656d7074,
                    mem[197 len 31]
    stor3[address(arg1)] = 1
    sub_1ba91a5f.length++
    sub_1ba91a5f[sub_1ba91a5f.length] = arg1
}

function removeRewardDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if not stor3[address(arg1)]:
        revert with 0, 'rewardDistributor not exist'
    stor3[address(arg1)] = 0
    idx = 0
    while idx < sub_1ba91a5f.length:
        mem[0] = 2
        if sub_1ba91a5f[idx] != arg1:
            idx = idx + 1
            continue 
        require sub_1ba91a5f.length - 1 < sub_1ba91a5f.length
        require idx < sub_1ba91a5f.length
        sub_1ba91a5f[idx] = sub_1ba91a5f[sub_1ba91a5f.length]
        require sub_1ba91a5f.length
        sub_1ba91a5f[sub_1ba91a5f.length] = 0
        sub_1ba91a5f.length--
}

function sub_6d420804(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6f436c61696d52657761726450726f787920697320616c726561647920696e697469616c697a65,
                    mem[203 len 25]
    stor4 = 1
    if not ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x654e756d626572206f662061637469766520726577617264206469737472696275746f72206973207a6572,
                    mem[207 len 21]
    if not address(cd[36]):
        revert with 0, 'forwarder cannot be empty'
    trustedForwarderAddress = address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x647265776172644469737472696275746f722063616e6e6f7420626520656d7074,
                        mem[197 len 31]
        require idx < ('cd', 4).length
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        sub_1ba91a5f.length++
        mem[0] = 2
        sub_1ba91a5f[sub_1ba91a5f.length] = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_499e4b02(?) payable {
    idx = 0
    while idx < sub_1ba91a5f.length:
        mem[0] = 2
        if calldata.size < 24:
            mem[100] = msg.sender
            require ext_code.size(sub_1ba91a5f[idx])
            staticcall sub_1ba91a5f[idx].0xe9d354ed with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            if trustedForwarderAddress != msg.sender:
                mem[100] = msg.sender
                require ext_code.size(sub_1ba91a5f[idx])
                staticcall sub_1ba91a5f[idx].0xe9d354ed with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                mem[100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                require ext_code.size(sub_1ba91a5f[idx])
                staticcall sub_1ba91a5f[idx].0xe9d354ed with:
                        gas gas_remaining wei
                       args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require idx < sub_1ba91a5f.length
            mem[0] = 2
            mem[96] = 0x1a483d7700000000000000000000000000000000000000000000000000000000
            if calldata.size < 24:
                mem[100] = msg.sender
                require ext_code.size(sub_1ba91a5f[idx])
                call sub_1ba91a5f[idx].0x1a483d77 with:
                     gas gas_remaining wei
                    args msg.sender
            else:
                if trustedForwarderAddress != msg.sender:
                    mem[100] = msg.sender
                    require ext_code.size(sub_1ba91a5f[idx])
                    call sub_1ba91a5f[idx].0x1a483d77 with:
                         gas gas_remaining wei
                        args msg.sender
                else:
                    mem[100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    require ext_code.size(sub_1ba91a5f[idx])
                    call sub_1ba91a5f[idx].0x1a483d77 with:
                         gas gas_remaining wei
                        args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_0469afbc(?) payable {
    require ext_code.size(this.address)
    if calldata.size < 24:
        staticcall this.address.0x4fc7ad7e with:
                gas gas_remaining wei
               args msg.sender
    else:
        if trustedForwarderAddress != msg.sender:
            staticcall this.address.0x4fc7ad7e with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall this.address.0x4fc7ad7e with:
                    gas gas_remaining wei
                   args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Total reward balance is zero'
    idx = 0
    while idx < sub_1ba91a5f.length:
        mem[0] = 2
        if calldata.size < 24:
            mem[100] = msg.sender
            require ext_code.size(sub_1ba91a5f[idx])
            staticcall sub_1ba91a5f[idx].0xd5a849e9 with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            if trustedForwarderAddress != msg.sender:
                mem[100] = msg.sender
                require ext_code.size(sub_1ba91a5f[idx])
                staticcall sub_1ba91a5f[idx].0xd5a849e9 with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                mem[100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                require ext_code.size(sub_1ba91a5f[idx])
                staticcall sub_1ba91a5f[idx].0xd5a849e9 with:
                        gas gas_remaining wei
                       args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require idx < sub_1ba91a5f.length
            mem[0] = 2
            if calldata.size < 24:
                mem[100] = msg.sender
                require ext_code.size(sub_1ba91a5f[idx])
                call sub_1ba91a5f[idx].0xd279c191 with:
                     gas gas_remaining wei
                    args msg.sender
            else:
                if trustedForwarderAddress != msg.sender:
                    mem[100] = msg.sender
                    require ext_code.size(sub_1ba91a5f[idx])
                    call sub_1ba91a5f[idx].0xd279c191 with:
                         gas gas_remaining wei
                        args msg.sender
                else:
                    mem[100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    require ext_code.size(sub_1ba91a5f[idx])
                    call sub_1ba91a5f[idx].0xd279c191 with:
                         gas gas_remaining wei
                        args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
