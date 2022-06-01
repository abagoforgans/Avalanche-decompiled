contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - _fallback()
#
const decimals = 18

const ADMIN_ROLE = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86


mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
uint8 paused;
mapping of struct roleAdmin;
uint256 swapAtAmount;
uint256 swapFee;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address usdcAddress;
address liquidityWalletAddress;
mapping of uint8 stor307;
mapping of uint8 stor308;
mapping of uint8 stor309;
uint256 launchedAt;
uint256 launchedAtTime;
uint8 sub_607e6d78;
uint256 sub_071fb5dd;
uint8 swapEnabled;
uint8 stor314; offset 8
uint8 sub_768640ec; offset 16
uint256 stor314; offset 16

function _whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor308[arg1])
}

function sub_071fb5dd(?) {
    return sub_071fb5dd
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor307[arg1])
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function usdc() {
    return usdcAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapFee() {
    return swapFee
}

function paused() {
    return bool(paused)
}

function sub_607e6d78(?) {
    return bool(sub_607e6d78)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function sub_768640ec(?) {
    return bool(sub_768640ec)
}

function swapAtAmount() {
    return swapAtAmount
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function launchedAtTime() {
    return launchedAtTime
}

function launchedAt() {
    return launchedAt
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_efb83749(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor309[arg1])
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_768640ec:
        if not stor308[address(msg.sender)]:
            if not stor308[0]:
                revert with 0, 'caller is not in whiteList'
    if balanceOf[address(msg.sender)].field_0 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)].field_0 -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_5b8c42c8(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_071fb5dd = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function updateSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        swapFee = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function updateSwapAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        swapAtAmount = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function updateSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        swapEnabled = uint8(arg1)
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_f547a502(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_607e6d78 = uint8(bool(arg1))
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function pause() {
    if roleAdmin[0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function unpause() {
    if roleAdmin[0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_19287010(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        Mask(240, 0, stor314.field_16) = Mask(240, 0, bool(arg1))
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_46f59ae8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor307[address(arg1)] = uint8(bool(arg2))
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_d10747ae(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor309[address(arg1)] = uint8(bool(arg2))
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        liquidityWalletAddress = arg1
        stor309[address(arg1)] = 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function updateWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor308[address(arg1)] = uint8(arg2)
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_768640ec:
        if not stor308[address(arg1)]:
            if not stor308[0]:
                revert with 0, 'caller is not in whiteList'
    if balanceOf[address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)].field_0 -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failure'
}

function updateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        if not roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0:
            roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0 = 1
            emit RoleGranted(0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function updateWhiteLists(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 308
            stor308[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_768640ec:
        if not stor308[0]:
            if not stor308[address(arg1)]:
                revert with 0, 'caller is not in whiteList'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, 0, arg1);
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_727e362d(?) {
    if not roleAdmin[0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x2aa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if balanceOf[this.address].field_0:
        if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
            revert with 0, 17
        staticcall usdcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 128] = this.address
        mem[ceil32(return_data.size) + 160] = usdcAddress
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor303] = balanceOf[this.address].field_1
        emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
        idx = 0
        s = ceil32(return_data.size) + 388
        t = ceil32(return_data.size) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall usdcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor303] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
        emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
        call usdcAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args this.address, usdcAddress, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, 0, liquidityWalletAddress, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor307[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if not launchedAtTime:
        if uniswapV2PairAddress == arg1:
            launchedAt = block.number
            launchedAtTime = block.timestamp
    if balanceOf[this.address].field_0 < swapAtAmount:
        if stor309[address(msg.sender)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if sub_768640ec:
                if not stor308[address(msg.sender)]:
                    if not stor308[address(arg1)]:
                        revert with 0, 'caller is not in whiteList'
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)].field_0 -= arg2
            if balanceOf[arg1].field_0 > !arg2:
                revert with 0, 17
            balanceOf[arg1].field_0 += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor309[address(arg1)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_768640ec:
                    if not stor308[address(msg.sender)]:
                        if not stor308[address(arg1)]:
                            revert with 0, 'caller is not in whiteList'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[arg1].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[arg1].field_0 += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and swapFee > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_768640ec:
                    if not stor308[address(msg.sender)]:
                        if not stor308[address(this.address)]:
                            revert with 0, 'caller is not in whiteList'
                if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                    revert with 0, 17
                balanceOf[this.address].field_0 += arg2 * swapFee / 100
                emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                if sub_607e6d78:
                    if launchedAtTime > !sub_071fb5dd:
                        revert with 0, 17
                    if block.timestamp <= launchedAtTime + sub_071fb5dd:
                        if uniswapV2RouterAddress == msg.sender:
                            stor307[address(arg1)] = 1
                        else:
                            if uniswapV2PairAddress == msg.sender:
                                stor307[address(arg1)] = 1
                        if uniswapV2RouterAddress == arg1:
                            stor307[address(msg.sender)] = 1
                        else:
                            if uniswapV2PairAddress == arg1:
                                stor307[address(msg.sender)] = 1
                if arg2 < arg2 * swapFee / 100:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_768640ec:
                    if not stor308[address(msg.sender)]:
                        if not stor308[address(arg1)]:
                            revert with 0, 'caller is not in whiteList'
                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                    revert with 0, 17
                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
    else:
        if uint8(stor314.field_8):
            if stor309[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_768640ec:
                    if not stor308[address(msg.sender)]:
                        if not stor308[address(arg1)]:
                            revert with 0, 'caller is not in whiteList'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[arg1].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[arg1].field_0 += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor309[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_768640ec:
                        if not stor308[address(msg.sender)]:
                            if not stor308[address(arg1)]:
                                revert with 0, 'caller is not in whiteList'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[arg1].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[arg1].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and swapFee > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_768640ec:
                        if not stor308[address(msg.sender)]:
                            if not stor308[address(this.address)]:
                                revert with 0, 'caller is not in whiteList'
                    if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                    if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg2 * swapFee / 100
                    emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                    if sub_607e6d78:
                        if launchedAtTime > !sub_071fb5dd:
                            revert with 0, 17
                        if block.timestamp <= launchedAtTime + sub_071fb5dd:
                            if uniswapV2RouterAddress == msg.sender:
                                stor307[address(arg1)] = 1
                            else:
                                if uniswapV2PairAddress == msg.sender:
                                    stor307[address(arg1)] = 1
                            if uniswapV2RouterAddress == arg1:
                                stor307[address(msg.sender)] = 1
                            else:
                                if uniswapV2PairAddress == arg1:
                                    stor307[address(msg.sender)] = 1
                    if arg2 < arg2 * swapFee / 100:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_768640ec:
                        if not stor308[address(msg.sender)]:
                            if not stor308[address(arg1)]:
                                revert with 0, 'caller is not in whiteList'
                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                    if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                        revert with 0, 17
                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                    emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
        else:
            if uniswapV2PairAddress == msg.sender:
                if stor309[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_768640ec:
                        if not stor308[address(msg.sender)]:
                            if not stor308[address(arg1)]:
                                revert with 0, 'caller is not in whiteList'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[arg1].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[arg1].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor309[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        if sub_768640ec:
                            if not stor308[address(msg.sender)]:
                                if not stor308[address(arg1)]:
                                    revert with 0, 'caller is not in whiteList'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[arg1].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[arg1].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and swapFee > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        if sub_768640ec:
                            if not stor308[address(msg.sender)]:
                                if not stor308[address(this.address)]:
                                    revert with 0, 'caller is not in whiteList'
                        if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                        if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * swapFee / 100
                        emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                        if sub_607e6d78:
                            if launchedAtTime > !sub_071fb5dd:
                                revert with 0, 17
                            if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                if uniswapV2RouterAddress == msg.sender:
                                    stor307[address(arg1)] = 1
                                else:
                                    if uniswapV2PairAddress == msg.sender:
                                        stor307[address(arg1)] = 1
                                if uniswapV2RouterAddress == arg1:
                                    stor307[address(msg.sender)] = 1
                                else:
                                    if uniswapV2PairAddress == arg1:
                                        stor307[address(msg.sender)] = 1
                        if arg2 < arg2 * swapFee / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        if sub_768640ec:
                            if not stor308[address(msg.sender)]:
                                if not stor308[address(arg1)]:
                                    revert with 0, 'caller is not in whiteList'
                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                        if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                            revert with 0, 17
                        balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                        emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
            else:
                if stor309[address(msg.sender)]:
                    if stor309[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        if sub_768640ec:
                            if not stor308[address(msg.sender)]:
                                if not stor308[address(arg1)]:
                                    revert with 0, 'caller is not in whiteList'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[arg1].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[arg1].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor309[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if paused:
                                revert with 0, 'Pausable: paused'
                            if sub_768640ec:
                                if not stor308[address(msg.sender)]:
                                    if not stor308[address(arg1)]:
                                        revert with 0, 'caller is not in whiteList'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[arg1].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[arg1].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and swapFee > -1 / arg2:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if paused:
                                revert with 0, 'Pausable: paused'
                            if sub_768640ec:
                                if not stor308[address(msg.sender)]:
                                    if not stor308[address(this.address)]:
                                        revert with 0, 'caller is not in whiteList'
                            if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                            if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * swapFee / 100
                            emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                            if sub_607e6d78:
                                if launchedAtTime > !sub_071fb5dd:
                                    revert with 0, 17
                                if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                    if uniswapV2RouterAddress == msg.sender:
                                        stor307[address(arg1)] = 1
                                    else:
                                        if uniswapV2PairAddress == msg.sender:
                                            stor307[address(arg1)] = 1
                                    if uniswapV2RouterAddress == arg1:
                                        stor307[address(msg.sender)] = 1
                                    else:
                                        if uniswapV2PairAddress == arg1:
                                            stor307[address(msg.sender)] = 1
                            if arg2 < arg2 * swapFee / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if paused:
                                revert with 0, 'Pausable: paused'
                            if sub_768640ec:
                                if not stor308[address(msg.sender)]:
                                    if not stor308[address(arg1)]:
                                        revert with 0, 'caller is not in whiteList'
                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                            if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                                revert with 0, 17
                            balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                            emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
                else:
                    if stor309[address(arg1)]:
                        if stor309[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if paused:
                                revert with 0, 'Pausable: paused'
                            if sub_768640ec:
                                if not stor308[address(msg.sender)]:
                                    if not stor308[address(arg1)]:
                                        revert with 0, 'caller is not in whiteList'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[arg1].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[arg1].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor309[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if paused:
                                    revert with 0, 'Pausable: paused'
                                if sub_768640ec:
                                    if not stor308[address(msg.sender)]:
                                        if not stor308[address(arg1)]:
                                            revert with 0, 'caller is not in whiteList'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[arg1].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and swapFee > -1 / arg2:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if paused:
                                    revert with 0, 'Pausable: paused'
                                if sub_768640ec:
                                    if not stor308[address(msg.sender)]:
                                        if not stor308[address(this.address)]:
                                            revert with 0, 'caller is not in whiteList'
                                if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                                if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 * swapFee / 100
                                emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                                if sub_607e6d78:
                                    if launchedAtTime > !sub_071fb5dd:
                                        revert with 0, 17
                                    if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                        if uniswapV2RouterAddress == msg.sender:
                                            stor307[address(arg1)] = 1
                                        else:
                                            if uniswapV2PairAddress == msg.sender:
                                                stor307[address(arg1)] = 1
                                        if uniswapV2RouterAddress == arg1:
                                            stor307[address(msg.sender)] = 1
                                        else:
                                            if uniswapV2PairAddress == arg1:
                                                stor307[address(msg.sender)] = 1
                                if arg2 < arg2 * swapFee / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if paused:
                                    revert with 0, 'Pausable: paused'
                                if sub_768640ec:
                                    if not stor308[address(msg.sender)]:
                                        if not stor308[address(arg1)]:
                                            revert with 0, 'caller is not in whiteList'
                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                                if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                                emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
                    else:
                        if not swapEnabled:
                            if stor309[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if paused:
                                    revert with 0, 'Pausable: paused'
                                if sub_768640ec:
                                    if not stor308[address(msg.sender)]:
                                        if not stor308[address(arg1)]:
                                            revert with 0, 'caller is not in whiteList'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[arg1].field_0 > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor309[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    if sub_768640ec:
                                        if not stor308[address(msg.sender)]:
                                            if not stor308[address(arg1)]:
                                                revert with 0, 'caller is not in whiteList'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[arg1].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and swapFee > -1 / arg2:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    if sub_768640ec:
                                        if not stor308[address(msg.sender)]:
                                            if not stor308[address(this.address)]:
                                                revert with 0, 'caller is not in whiteList'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                                    if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 * swapFee / 100
                                    emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                                    if sub_607e6d78:
                                        if launchedAtTime > !sub_071fb5dd:
                                            revert with 0, 17
                                        if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                            if uniswapV2RouterAddress == msg.sender:
                                                stor307[address(arg1)] = 1
                                            else:
                                                if uniswapV2PairAddress == msg.sender:
                                                    stor307[address(arg1)] = 1
                                            if uniswapV2RouterAddress == arg1:
                                                stor307[address(msg.sender)] = 1
                                            else:
                                                if uniswapV2PairAddress == arg1:
                                                    stor307[address(msg.sender)] = 1
                                    if arg2 < arg2 * swapFee / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    if sub_768640ec:
                                        if not stor308[address(msg.sender)]:
                                            if not stor308[address(arg1)]:
                                                revert with 0, 'caller is not in whiteList'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                                    if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                                    emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
                        else:
                            uint8(stor314.field_8) = 1
                            if not balanceOf[this.address].field_0:
                                uint8(stor314.field_8) = 0
                                if stor309[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    if sub_768640ec:
                                        if not stor308[address(msg.sender)]:
                                            if not stor308[address(arg1)]:
                                                revert with 0, 'caller is not in whiteList'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[arg1].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor309[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(arg1)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[arg1].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and swapFee > -1 / arg2:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(this.address)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                                        if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                                            revert with 0, 17
                                        balanceOf[this.address].field_0 += arg2 * swapFee / 100
                                        emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                                        if sub_607e6d78:
                                            if launchedAtTime > !sub_071fb5dd:
                                                revert with 0, 17
                                            if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                                if uniswapV2RouterAddress == msg.sender:
                                                    stor307[address(arg1)] = 1
                                                else:
                                                    if uniswapV2PairAddress == msg.sender:
                                                        stor307[address(arg1)] = 1
                                                if uniswapV2RouterAddress == arg1:
                                                    stor307[address(msg.sender)] = 1
                                                else:
                                                    if uniswapV2PairAddress == arg1:
                                                        stor307[address(msg.sender)] = 1
                                        if arg2 < arg2 * swapFee / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(arg1)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                                        if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                                        emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                                    revert with 0, 17
                                staticcall usdcAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 128] = this.address
                                mem[ceil32(return_data.size) + 160] = usdcAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor303] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = ceil32(return_data.size) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                staticcall usdcAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor303] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                                emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                                call usdcAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args uniswapV2RouterAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args this.address, usdcAddress, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, 0, liquidityWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
                                uint8(stor314.field_8) = 0
                                if stor309[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    if sub_768640ec:
                                        if not stor308[address(msg.sender)]:
                                            if not stor308[address(arg1)]:
                                                revert with 0, 'caller is not in whiteList'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[arg1].field_0 > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor309[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(arg1)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[arg1].field_0 > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and swapFee > -1 / arg2:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(this.address)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * swapFee / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * swapFee / 100
                                        if balanceOf[this.address].field_0 > !(arg2 * swapFee / 100):
                                            revert with 0, 17
                                        balanceOf[this.address].field_0 += arg2 * swapFee / 100
                                        emit Transfer((arg2 * swapFee / 100), msg.sender, this.address);
                                        if sub_607e6d78:
                                            if launchedAtTime > !sub_071fb5dd:
                                                revert with 0, 17
                                            if block.timestamp <= launchedAtTime + sub_071fb5dd:
                                                if uniswapV2RouterAddress == msg.sender:
                                                    stor307[address(arg1)] = 1
                                                else:
                                                    if uniswapV2PairAddress == msg.sender:
                                                        stor307[address(arg1)] = 1
                                                if uniswapV2RouterAddress == arg1:
                                                    stor307[address(msg.sender)] = 1
                                                else:
                                                    if uniswapV2PairAddress == arg1:
                                                        stor307[address(msg.sender)] = 1
                                        if arg2 < arg2 * swapFee / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if paused:
                                            revert with 0, 'Pausable: paused'
                                        if sub_768640ec:
                                            if not stor308[address(msg.sender)]:
                                                if not stor308[address(arg1)]:
                                                    revert with 0, 'caller is not in whiteList'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * swapFee / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * swapFee / 100)
                                        if balanceOf[arg1].field_0 > !(arg2 - (arg2 * swapFee / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * swapFee / 100)
                                        emit Transfer((arg2 - (arg2 * swapFee / 100)), msg.sender, arg1);
    return 1
}



}
