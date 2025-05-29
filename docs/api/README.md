
# DataCollectPro API Documentation

## Authentication

All API requests require authentication using JWT tokens in the Authorization header:

```
Authorization: Bearer <your_jwt_token>
```

## Base URL

```
Production: https://your-domain.replit.app/api
Development: http://localhost:5000/api
```

## Core Endpoints

### Authentication
- `POST /auth/register` - Register new user
- `POST /auth/login` - Authenticate user
- `POST /auth/refresh` - Refresh JWT token
- `POST /auth/logout` - Logout user

### Forms Management
- `GET /forms` - List all forms
- `POST /forms` - Create new form
- `GET /forms/:id` - Get form details
- `PUT /forms/:id` - Update form
- `DELETE /forms/:id` - Delete form

### Data Collection
- `POST /submissions` - Submit form data
- `GET /submissions` - List submissions
- `GET /submissions/:id` - Get submission details
- `PUT /submissions/:id` - Update submission

### Analytics
- `GET /analytics/dashboard` - Get dashboard metrics
- `GET /analytics/forms/:id/stats` - Get form statistics
- `GET /analytics/export` - Export analytics data

### Billing
- `GET /billing/subscription` - Get current subscription
- `POST /billing/create-subscription` - Create new subscription
- `PUT /billing/update-subscription` - Update subscription
- `GET /billing/usage` - Get usage statistics

## Rate Limits

- Authentication endpoints: 5 requests per minute
- General API endpoints: 100 requests per minute
- File uploads: 10 requests per minute

## Error Responses

All errors follow this format:

```json
{
  "error": true,
  "message": "Error description",
  "code": "ERROR_CODE",
  "details": {}
}
```

## Webhooks

DataCollectPro supports webhooks for real-time notifications:

- `form.submitted` - New form submission
- `subscription.updated` - Subscription changes
- `user.registered` - New user registration

Configure webhooks in your account settings.
