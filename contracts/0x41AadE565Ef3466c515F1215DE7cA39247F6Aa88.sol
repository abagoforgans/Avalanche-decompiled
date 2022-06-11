contract main {




// =====================  Runtime code  =====================


address owner;
uint256 cost;
uint256 maxSupply;
uint256 maxMintAmount;
address lotteryAddress;
address devAddress;
mapping of uint8 whitelisted;
mapping of uint8 stor7;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
mapping of address minter;
mapping of uint256 sub_7dc62c7d;
mapping of uint256 sub_4ba16a57;
uint8 saleState;
uint8 maxPresaleMintAmount; offset 56
uint16 premint; offset 8
uint16 reserve; offset 24
uint16 presale; offset 40
uint256 presaleCost;
address nftAddress;
uint256 nextId;
uint256 sub_57e91d42;

function cost() {
    return cost
}

function maxMintAmount() {
    return maxMintAmount
}

function presaleCost() {
    return presaleCost
}

function devAddress() {
    return devAddress
}

function lotteryAddress() {
    return lotteryAddress
}

function reflectionBalance() {
    return reflectionBalance
}

function nft() {
    return nftAddress
}

function premint() {
    return premint
}

function totalDividend() {
    return totalDividend
}

function sub_4ba16a57(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4ba16a57[arg1]
}

function sub_57e91d42(?) {
    return sub_57e91d42
}

function saleState() {
    return saleState
}

function nextId() {
    return nextId
}

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function sub_7dc62c7d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_7dc62c7d[arg1][arg2]
}

function maxPresaleMintAmount() {
    return maxPresaleMintAmount
}

function owner() {
    return owner
}

function sub_9898a5ed(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function reserve() {
    return reserve
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function maxSupply() {
    return maxSupply
}

function sub_d6a90179(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= sub_4ba16a57[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return sub_7dc62c7d[address(arg1)][arg2]
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelisted[arg1]
}

function sub_e37ef631(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return sub_4ba16a57[address(arg1)]
}

function presale() {
    return presale
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function setSaleState(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleState = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
}

function setmaxMintAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintAmount = arg1
}

function setLotteryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lotteryAddress = arg1
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function currentRate() {
    if nextId < 1:
        revert with 'NH{q', 17
    if not nextId - 1:
        return 0
    if nextId < 1:
        revert with 'NH{q', 17
    if nextId - 1 < premint:
        revert with 'NH{q', 17
    if not nextId + -premint - 1:
        revert with 'NH{q', 18
    return (reflectionBalance / nextId + -premint - 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function reflectToOwners() payable {
    if reflectionBalance > -msg.value - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value
    if nextId < 1:
        revert with 'NH{q', 17
    if nextId - 1 < premint:
        revert with 'NH{q', 17
    if not nextId + -premint - 1:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / nextId + -premint - 1) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / nextId + -premint - 1
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > premint:
        if arg1 <= maxSupply:
            if totalDividend < lastDividendAt[arg1]:
                revert with 'NH{q', 17
            call minter[arg1] with:
               value totalDividend - lastDividendAt[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            lastDividendAt[arg1] = totalDividend
}

function sub_89d21ba0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_aea477e4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b2e13111(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        whitelisted[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function whitelistUsers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        whitelisted[address(cd[((32 * idx) + arg1 + 36)])] = maxPresaleMintAmount
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_66d0b090(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > reserve:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The quantity exceeds the reserve.'
    if reserve < uint16(arg1):
        revert with 'NH{q', 17
    reserve = uint16(reserve - uint16(arg1))
    idx = 0
    while idx < uint16(arg1):
        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg2)
        mem[132] = nextId
        require ext_code.size(nftAddress)
        call nftAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), nextId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if nextId == -1:
            revert with 'NH{q', 17
        nextId++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function freeMint() {
    if saleState <= 0:
        revert with 0, 'Freemint not opened.'
    if not stor7[address(msg.sender)]:
        revert with 0, 'Not freelisted.'
    if nextId > -reserve - 1:
        revert with 'NH{q', 17
    if nextId + reserve > maxSupply:
        revert with 0, 'Sold out'
    stor7[address(msg.sender)] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, nextId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    minter[stor17] = msg.sender
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    sub_7dc62c7d[address(msg.sender)][stor13[address(msg.sender)]] = nextId
    if sub_4ba16a57[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    sub_4ba16a57[address(msg.sender)]++
    lastDividendAt[stor17] = totalDividend
    if nextId == -1:
        revert with 'NH{q', 17
    nextId++
    if sub_57e91d42 == -1:
        revert with 'NH{q', 17
    sub_57e91d42++
}

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < sub_4ba16a57[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= sub_4ba16a57[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 12)
        if sub_7dc62c7d[address(msg.sender)][idx] <= premint:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if totalDividend < lastDividendAt[stor12[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor12[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        mem[0] = sub_7dc62c7d[address(msg.sender)][idx]
        mem[32] = 10
        lastDividendAt[stor12[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor12[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < sub_4ba16a57[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= sub_4ba16a57[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = sub_7dc62c7d[address(msg.sender)][idx]
        mem[32] = 10
        if totalDividend < lastDividendAt[stor12[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor12[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor12[address(msg.sender)][idx]]
        continue 
    return (s * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)] * sub_4ba16a57[address(msg.sender)])
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if nextId < 1:
        revert with 'NH{q', 17
    if not saleState:
        revert with 0, 'Sale not opened.'
    if arg1 <= 0:
        revert with 0, 'Mint amount cannot be 0.'
    if saleState != 1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if sub_4ba16a57[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        if sub_4ba16a57[address(msg.sender)] + arg1 > maxMintAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint amount exceeded max mint amount.'
    else:
        if not whitelisted[address(msg.sender)]:
            revert with 0, 'Not whitelisted.'
        if arg1 > whitelisted[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint amount exceeded max presale mint amount.'
        if whitelisted[address(msg.sender)] < uint8(arg1):
            revert with 'NH{q', 17
        whitelisted[address(msg.sender)] = uint8(whitelisted[address(msg.sender)] - uint8(arg1))
    if nextId > -arg1:
        revert with 'NH{q', 17
    if nextId + arg1 > -reserve:
        revert with 'NH{q', 17
    if nextId + arg1 + reserve - 1 > maxSupply:
        revert with 0, 'Sold out'
    idx = 1
    s = 0
    while idx <= arg1:
        if presale > -premint + 65535:
            revert with 'NH{q', 17
        if uint16(presale + premint) > -sub_57e91d42 - 1:
            revert with 'NH{q', 17
        if nextId <= uint16(presale + premint) + sub_57e91d42:
            if s > -presaleCost - 1:
                revert with 'NH{q', 17
            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = nextId
            require ext_code.size(nftAddress)
            call nftAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, nextId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            minter[stor17] = msg.sender
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            sub_7dc62c7d[address(msg.sender)][stor13[address(msg.sender)]] = nextId
            if sub_4ba16a57[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            sub_4ba16a57[address(msg.sender)]++
            mem[0] = nextId
            mem[32] = 10
            lastDividendAt[stor17] = totalDividend
            if nextId == -1:
                revert with 'NH{q', 17
            nextId++
            if presaleCost and 15 > -1 / presaleCost:
                revert with 'NH{q', 17
            if presaleCost and 5 > -1 / presaleCost:
                revert with 'NH{q', 17
            if presaleCost < 15 * presaleCost / 100:
                revert with 'NH{q', 17
            if presaleCost - (15 * presaleCost / 100) < 5 * presaleCost / 100:
                revert with 'NH{q', 17
            if reflectionBalance > -(15 * presaleCost / 100) - 1:
                revert with 'NH{q', 17
            reflectionBalance += 15 * presaleCost / 100
            if nextId < 1:
                revert with 'NH{q', 17
            if nextId - 1 < premint:
                revert with 'NH{q', 17
            if not nextId + -premint - 1:
                revert with 'NH{q', 18
            if totalDividend > -(15 * presaleCost / 100 / nextId + -premint - 1) - 1:
                revert with 'NH{q', 17
            totalDividend += 15 * presaleCost / 100 / nextId + -premint - 1
            call lotteryAddress with:
               value 5 * presaleCost / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call devAddress with:
               value presaleCost - (15 * presaleCost / 100) - (5 * presaleCost / 100) wei
                 gas 2300 * is_zero(value) wei
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + presaleCost
            continue 
        if s > -cost - 1:
            revert with 'NH{q', 17
        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = nextId
        require ext_code.size(nftAddress)
        call nftAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, nextId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        minter[stor17] = msg.sender
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        sub_7dc62c7d[address(msg.sender)][stor13[address(msg.sender)]] = nextId
        if sub_4ba16a57[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        sub_4ba16a57[address(msg.sender)]++
        mem[0] = nextId
        mem[32] = 10
        lastDividendAt[stor17] = totalDividend
        if nextId == -1:
            revert with 'NH{q', 17
        nextId++
        if cost and 15 > -1 / cost:
            revert with 'NH{q', 17
        if cost and 5 > -1 / cost:
            revert with 'NH{q', 17
        if cost < 15 * cost / 100:
            revert with 'NH{q', 17
        if cost - (15 * cost / 100) < 5 * cost / 100:
            revert with 'NH{q', 17
        if reflectionBalance > -(15 * cost / 100) - 1:
            revert with 'NH{q', 17
        reflectionBalance += 15 * cost / 100
        if nextId < 1:
            revert with 'NH{q', 17
        if nextId - 1 < premint:
            revert with 'NH{q', 17
        if not nextId + -premint - 1:
            revert with 'NH{q', 18
        if totalDividend > -(15 * cost / 100 / nextId + -premint - 1) - 1:
            revert with 'NH{q', 17
        totalDividend += 15 * cost / 100 / nextId + -premint - 1
        call lotteryAddress with:
           value 5 * cost / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call devAddress with:
           value cost - (15 * cost / 100) - (5 * cost / 100) wei
             gas 2300 * is_zero(value) wei
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cost
        continue 
    if msg.value < s:
        revert with 0, 'Not enough funds.'
}



}
