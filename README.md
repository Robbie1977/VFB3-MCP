# VFB3-MCP Server

A Model Context Protocol (MCP) server for interacting with VirtualFlyBrain (VFB) APIs. This server provides tools to query VFB data, run queries, and search for terms.

## 🚀 Quick Start

### Use the Live Service (Recommended)

The easiest way to use VFB3-MCP is through our hosted service:

**Endpoint**: `https://vfb3-mcp.virtualflybrain.org`

#### Configure Your MCP Client

**Claude Desktop** - Add to your MCP configuration:
```json
{
  "mcpServers": {
    "vfb3-mcp": {
      "url": "https://vfb3-mcp.virtualflybrain.org"
    }
  }
}
```

**Claude Code** - Add to your `claude.json`:
```json
{
  "mcpServers": {
    "vfb3-mcp": {
      "url": "https://vfb3-mcp.virtualflybrain.org"
    }
  }
}
```

**GitHub Copilot** - Configure the MCP server URL to: `https://vfb3-mcp.virtualflybrain.org`

## 🛠️ Run Locally

### Prerequisites

- Node.js 18 or higher
- npm or yarn

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Robbie1977/VFB3-MCP.git
   cd VFB3-MCP
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Build the project:
   ```bash
   npm run build
   ```

4. Start the server:
   ```bash
   npm start
   ```

### Local MCP Configuration

For **Claude Desktop** local development:
```json
{
  "mcpServers": {
    "vfb3-mcp": {
      "command": "node",
      "args": ["/path/to/VFB3-MCP/dist/index.js"]
    }
  }
}
```

## 📚 Available Tools

### get_term_info
Retrieve detailed information about VFB terms using their IDs.

**Parameters:**
- `id` (string): VFB ID (e.g., "VFB_jrcv0i43")

### run_query
Execute predefined queries on VFB data.

**Parameters:**
- `id` (string): VFB ID (e.g., "VFB_00101567")
- `query_type` (string): Type of query (e.g., "PaintedDomains")

### search_terms
Search for VFB terms using the Solr search server.

**Parameters:**
- `query` (string): Search query (e.g., "medulla")

## 🧠 About VirtualFlyBrain

VirtualFlyBrain (VFB) is a comprehensive knowledge base about *Drosophila melanogaster* neurobiology, providing 3D images, gene expression data, neural connectivity information, and standardized terminology for fly brain research.

## 📖 Documentation

- **[LLM Guidance](LLM_GUIDANCE.md)**: Guide for AI assistants on using this MCP effectively
- **[Examples](examples.md)**: Usage examples and integration guides
- **[Technical Documentation](TECHNICAL.md)**: Infrastructure, deployment, and development details

## 📄 License

ISC