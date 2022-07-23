contract main {




// =====================  Runtime code  =====================


#
#  - createMarket(uint256 arg1, address arg2, uint256 arg3, address arg4, bytes arg5)
#
const sub_4f5f2a45(?) = 0x185f85149db0f205130703941d0f9ccd8133e50df5d5080231c7704337aa2c38


uint8 stor0; offset 160
address accessControlsAddress;
array of struct auctions;
uint256 auctionTemplateId;
address bentoBoxAddress;
mapping of address auctionTemplate;
mapping of uint256 templateId;
mapping of uint256 currentTemplateId;
mapping of struct auctionInfo;
uint32 stor8; offset 128
uint128 minimumFee;
uint8 stor9;
address misoDivAddress; offset 8

function auctionInfo(address arg1) {
    require calldata.size - 4 >= 32
    return bool(auctionInfo[arg1].field_0), auctionInfo[arg1].field_0, auctionInfo[arg1].field_72
}

function minimumFee() {
    return minimumFee
}

function currentTemplateId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentTemplateId[arg1]
}

function getAuctionTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return auctionTemplate[arg1]
}

function numberOfAuctions() {
    return auctions.length
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < auctions.length
    return auctions[arg1].field_0
}

function bentoBox() {
    return bentoBoxAddress
}

function auctionTemplateId() {
    return auctionTemplateId
}

function accessControls() {
    return accessControlsAddress
}

function getMarketTemplateId(address arg1) {
    require calldata.size - 4 >= 32
    return auctionInfo[address(arg1)].field_8
}

function misoDiv() {
    return misoDivAddress
}

function locked() {
    return bool(stor9)
}

function getTemplateId(address arg1) {
    require calldata.size - 4 >= 32
    return templateId[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9edbd90a(?) {
    return minimumFee, stor8
}

function hasMarketMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x185f85149db0f205130703941d0f9ccd8133e50df5d5080231c7704337aa2c38, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setLocked(bool arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MISOMarket: Sender must be admin'
    stor9 = uint8(arg1)
}

function setDividends(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe4d49534f4d61726b65742e7365744465763a2053656e646572206d757374206265206f70657261746f,
                    mem[206 len 22]
    require arg1
    misoDivAddress = arg1
}

function setMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d49534f4d61726b65743a2053656e646572206d757374206265206f70657261746f,
                    mem[199 len 29]
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    minimumFee = uint128(arg1)
}

function getMarkets() {
    if not auctions.length:
        mem[(32 * auctions.length) + 128] = 32
        mem[(32 * auctions.length) + 160] = auctions.length
        mem[(32 * auctions.length) + 192 len floor32(auctions.length)] = mem[128 len floor32(auctions.length)]
        return memory
          from (32 * auctions.length) + 128
           len (96 * auctions.length) + 64
    mem[128] = address(auctions.field_0)
    idx = 128
    s = 0
    while (32 * auctions.length) + 96 > idx:
        mem[idx + 32] = auctions[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * auctions.length) + 192 len floor32(auctions.length)] = mem[128 len floor32(auctions.length)]
    return Array(len=auctions.length, data=mem[128 len floor32(auctions.length)], mem[(32 * auctions.length) + floor32(auctions.length) + 192 len (32 * auctions.length) - floor32(auctions.length)]), 
}

function setIntegratorFeePct(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d49534f4d61726b65743a2053656e646572206d757374206265206f70657261746f,
                    mem[199 len 29]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6f4d49534f4d61726b65743a2050657263656e74616765206973206f7574206f6620313030,
                    mem[201 len 27]
    stor8 = uint32(arg1)
}

function setCurrentTemplateId(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MISOMarket: Sender must be admin'
    if not auctionTemplate[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x724d49534f4d61726b65743a20696e636f7272656374205f74656d706c61746549,
                    mem[197 len 31]
    require ext_code.size(auctionTemplate[arg2])
    staticcall auctionTemplate[arg2].0x1b3e460e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x744d49534f4d61726b65743a20696e636f7272656374205f74656d706c617465547970,
                    mem[199 len 29]
    currentTemplateId[arg1] = arg2
}

function removeAuctionTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xfc4e3e0a with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x724d49534f4d61726b65743a2053656e646572206d757374206265206f70657261746f,
                        mem[199 len 29]
    require ext_code.size(auctionTemplate[arg1])
    staticcall auctionTemplate[arg1].0x1b3e460e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == currentTemplateId[ext_call.return_data[0]]:
        currentTemplateId[ext_call.return_data[0]] = 0
    auctionTemplate[arg1] = 0
    templateId[stor4[arg1]] = 0
    emit AuctionTemplateRemoved(auctionTemplate[arg1], arg1);
}

function addAuctionTemplate(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xfc4e3e0a with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x724d49534f4d61726b65743a2053656e646572206d757374206265206f70657261746f,
                        mem[199 len 29]
    if not arg1:
        revert with 0, 'MISOMarket: Incorrect template'
    if templateId[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654d49534f4d61726b65743a2054656d706c61746520616c72656164792061646465,
                    mem[198 len 30]
    require ext_code.size(arg1)
    staticcall arg1.0x1b3e460e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f4d49534f4d61726b65743a20496e636f72726563742074656d706c61746520636f6465,
                    mem[200 len 28]
    auctionTemplateId++
    auctionTemplate[stor2 + 1] = arg1
    templateId[address(arg1)] = auctionTemplateId
    currentTemplateId[ext_call.return_data[0]] = auctionTemplateId
    emit AuctionTemplateAdded(address(arg1), auctionTemplateId);
}

function sub_274a2258(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require not stor0
    if not arg1:
        revert with 0, 
                    32,
                    52,
                    0x6c696e69744d49534f4d61726b65743a20616363657373436f6e74726f6c732063616e6e6f742062652073657420746f207a6572,
                    mem[(32 * arg3.length) + 248 len 12]
    if not arg2:
        revert with 0, 
                    32,
                    46,
                    0x64696e69744d49534f4d61726b65743a2062656e746f426f782063616e6e6f742062652073657420746f207a6572,
                    mem[(32 * arg3.length) + 242 len 18]
    accessControlsAddress = arg1
    bentoBoxAddress = arg2
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _31 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'MISOMarket: Incorrect template'
        if templateId[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 32, 34, 0x654d49534f4d61726b65743a2054656d706c61746520616c72656164792061646465, mem[(32 * arg3.length) + 230 len 30]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x1b3e460e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        36,
                        0x6f4d49534f4d61726b65743a20496e636f72726563742074656d706c61746520636f6465,
                        mem[(32 * arg3.length) + 232 len 28]
        auctionTemplateId++
        auctionTemplate[stor2 + 1] = mem[(32 * idx) + 140 len 20]
        templateId[address(mem[(32 * idx) + 128])] = auctionTemplateId
        mem[0] = ext_call.return_data[0]
        mem[32] = 6
        currentTemplateId[ext_call.return_data[0]] = auctionTemplateId
        mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg3.length) + 160] = auctionTemplateId
        emit AuctionTemplateAdded(address(_31), auctionTemplateId);
        idx = idx + 1
        continue 
    stor9 = 1
    stor0 = 1
    emit MisoInitMarket(msg.sender);
}

function deployMarket(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor9:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xc395fcb3 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(accessControlsAddress)
            staticcall accessControlsAddress.hasMinterRole(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(accessControlsAddress)
                staticcall accessControlsAddress.0x91d14854 with:
                        gas gas_remaining wei
                       args 0x185f85149db0f205130703941d0f9ccd8133e50df5d5080231c7704337aa2c38, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x644d49534f4d61726b65743a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[207 len 21]
    if msg.value < minimumFee:
        revert with 0, 32, 41, 0x644d49534f4d61726b65743a204661696c656420746f207472616e73666572206d696e696d756d4665, mem[333 len 23]
    if not auctionTemplate[arg1]:
        revert with 0, 32, 42, 0x304d49534f4d61726b65743a2041756374696f6e2074656d706c61746520646f65736e27742065786973, mem[334 len 22]
    require ext_code.size(bentoBoxAddress)
    call bentoBoxAddress.0x1f54245b with:
         gas gas_remaining wei
        args auctionTemplate[arg1], 96, 0, 0, mem[356]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint64 Overflow'
    if auctions.length > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    auctionInfo[address(ext_call.return_data[0])].field_0 = 1
    auctionInfo[address(ext_call.return_data[0])].field_0 = uint128(auctions.length)
    auctionInfo[address(ext_call.return_data[0])].field_8 = uint64(arg1)
    auctionInfo[address(ext_call.return_data[0])].field_72 = 0
    auctionInfo[address(ext_call.return_data[0])].field_200 = 0
    auctions.length++
    auctions[auctions.length].field_0 = address(ext_call.return_data[0])
    emit MarketCreated(auctionTemplate[arg1], msg.sender, address(ext_call.return_data[0]));
    if not arg2:
        if msg.value:
            call misoDivAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if misoDivAddress == arg2:
            if msg.value:
                call misoDivAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.value - (msg.value * stor8 / 1000):
                call misoDivAddress with:
                   value msg.value - (msg.value * stor8 / 1000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * stor8 / 1000:
                call arg2 with:
                   value msg.value * stor8 / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
